`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:   UTN
// Engineer:  Bruno Glecer
// 
// Create Date: 07/27/2025 08:50:59 AM
// Design Name: FMCW Radar Sweep Controller
// Module Name: radar_sweep_ctrl
// Project Name: FMCW Radar
// Target Devices: XC7Z010CLG400
// Tool Versions: 2025.1
// Description: Reads BRAM to generate the sweep as input for the VCO of a
// FMCW Radar
// 
// Dependencies: 
// 
// Revision: 1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module signal_generator(
    input wire          clk,
    input wire          resetn,
    
    // AXI-LITE SLAVE SIGNALS: Used for configuration
    input wire [31:0]   s_axi_awaddr,
    input wire          s_axi_awvalid,
    output wire         s_axi_awready,
    input wire [31:0]   s_axi_wdata,
    input wire [3:0]    s_axi_wstrb,
    input wire          s_axi_wvalid,
    output wire         s_axi_wready,
    output wire [1:0]   s_axi_bresp,
    output wire         s_axi_bvalid,
    input wire          s_axi_bready,
    input wire [31:0]   s_axi_araddr,
    input wire          s_axi_arvalid,
    output wire         s_axi_arready,
    output wire [31:0]  s_axi_rdata,
    output wire [1:0]   s_axi_rresp,
    output wire         s_axi_rvalid,
    input wire          s_axi_rready,

    // AXI STREAM MASTER: Used for signal output
    output wire [15:0] m_axis_tdata,
    output wire m_axis_tvalid,
    input  wire m_axis_tready,
    output wire m_axis_tlast,
    output wire [1:0] m_axis_tkeep,
    
    // BRAM: Used for reading sweep waveform
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *)  output wire        bram_clk,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT RST" *)  output wire        bram_rst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT EN" *)   output wire        bram_en,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) output wire [13:0] bram_addr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *)  input  wire [15:0] bram_dout,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT WE" *)   output wire [0:0]  bram_we,
        
    // Signal indicating the sweep is in progress, intended to start and end acquisition
    output wire sampling
);

    parameter REG_START_ADDR    = 4'd0;      // Offset: 0x0
    parameter REG_SWEEP_CLK_DIV_ADDR = 4'd1; // Offset: 0x4
    parameter REG_SWEEP_MAX_ADDR_ADDR  = 4'd2; // Offset: 0x8
    
    reg          reg_start;         // Writing 0x1 starts sweep
    reg [15:0]   reg_sweep_clk_div; // Sets clock divider for reading sweep memory
    reg [15:0]   reg_sweep_max_addr;  // Maximum address to read from memory for sweep (including)
    
    // AXI-LITE SLAVE:  Internal signals
    reg [31:0] rdata_reg;
    reg rvalid_reg, bvalid_reg;
    reg s_axi_awready_reg, wready_reg, arready_reg;

    // Sweep Logic:  Internal signals
    reg [15:0]  sweep_addr;
    reg         clear_reg_start;
    reg [15:0]  clk_div_counter;
    
    // AXI-STREAM MASTER: Internal Signals
    reg m_axis_tvalid_reg;
    reg m_axis_tlast_reg;
    reg [15:0] m_axis_tdata_reg;

    localparam IDLE = 2'b00, PREP = 2'b01, SWEEP = 2'b10, LAST = 2'b11;
    reg [1:0] state;
    reg sampling_reg;
    
    //  AXI-LITE SLAVE: Write address handshake
    always @(posedge clk) begin
        if (!resetn) begin
            s_axi_awready_reg <= 1'b0;
        end else if (s_axi_awvalid && !s_axi_awready_reg) begin
            s_axi_awready_reg <= 1'b1;
        end else begin
            s_axi_awready_reg <= 1'b0;
        end
    end

    // AXI-LITE SLAVE:  Read address handshake
    always @(posedge clk) begin
        if (!resetn) begin
            arready_reg <= 1'b0;
            rvalid_reg <= 1'b0;
        end else if (s_axi_arvalid && !arready_reg) begin
            arready_reg <= 1'b1;
            case (s_axi_araddr[5:2])
                REG_START_ADDR:         rdata_reg <= reg_start;
                REG_SWEEP_CLK_DIV_ADDR: rdata_reg <= reg_sweep_clk_div;
                REG_SWEEP_MAX_ADDR_ADDR:  rdata_reg <= reg_sweep_max_addr;
                default: rdata_reg <= 32'h00000000; // Default value
            endcase
            rvalid_reg <= 1'b1;
        end else if (s_axi_rready && rvalid_reg) begin
            rvalid_reg <= 1'b0;
        end else begin
            arready_reg <= 1'b0;
        end
    end
    
    //  AXI-LITE SLAVE:  Write data handler
    always @(posedge clk) begin
        if (!resetn) begin
            wready_reg <= 1'b0;
            bvalid_reg <= 1'b0;
            
            reg_sweep_clk_div <= 0;
            reg_sweep_max_addr <= 0;
            reg_start <= 0;
        end else if (s_axi_wvalid && !wready_reg) begin
            wready_reg <= 1'b1;
            
            case (s_axi_awaddr[5:2])
                REG_START_ADDR: begin
                    if (s_axi_wstrb[0]) reg_start <= s_axi_wdata[0:0];
                end
                REG_SWEEP_CLK_DIV_ADDR: begin
                    if (s_axi_wstrb[0]) reg_sweep_clk_div[7:0] <= s_axi_wdata[7:0];
                    if (s_axi_wstrb[1]) reg_sweep_clk_div[15:8] <= s_axi_wdata[15:8];
                end
                REG_SWEEP_MAX_ADDR_ADDR: begin
                    if (s_axi_wstrb[0]) reg_sweep_max_addr[7:0] <= s_axi_wdata[7:0];
                    if (s_axi_wstrb[1]) reg_sweep_max_addr[15:8] <= s_axi_wdata[15:8];
                end
                default: begin
                    // Handle invalid addresses                    
                end
            endcase
            bvalid_reg <= 1'b1;
        end else if (s_axi_bready && bvalid_reg) begin
            bvalid_reg <= 1'b0;
        end else begin
            wready_reg <= 1'b0;
        end
        
        // Registers modified by internal logic
        if(clear_reg_start) begin
            reg_start <= 0;
        end
        
    end
    
    assign s_axi_awready = s_axi_awready_reg;
    assign s_axi_wready = wready_reg;
    assign s_axi_bresp = 2'b00; // OKAY response
    assign s_axi_bvalid = bvalid_reg;
    assign s_axi_arready = arready_reg;
    assign s_axi_rdata = rdata_reg;
    assign s_axi_rresp = 2'b00; // OKAY response
    assign s_axi_rvalid = rvalid_reg;    

    // AXI-STREAM MASTER: Sweep Logcic & AXI Stream Handshake logic
    always @(posedge clk) begin
        if(!resetn) begin
            m_axis_tdata_reg <= 0;            
            m_axis_tvalid_reg <= 0;
            m_axis_tlast_reg <= 0;
            clear_reg_start <= 0;
            clk_div_counter <= 0;
            sweep_addr <= 0;
            sampling_reg <= 0;
            state <= IDLE; 
        end else begin
            case (state)
            
                IDLE: begin // Waiting for start command
                    if (reg_start && !clear_reg_start) begin
                        state <= PREP;
                        m_axis_tdata_reg <= bram_dout;
                    end else if(!reg_start && clear_reg_start) begin
                        clear_reg_start <= 0;
                    end
                end
                
                PREP: begin // Fetch first data from bram, and prepare for next addr
                    if(clk_div_counter == reg_sweep_clk_div) begin
                        sweep_addr <= sweep_addr + 1;
                    end else begin
                        clk_div_counter <= clk_div_counter + 1;
                    end
                    
                    m_axis_tdata_reg <= bram_dout;
                    state <= SWEEP;
                end
                
                SWEEP: begin
                    if (m_axis_tready) begin // Count only if AXIS data was sent correctly 
                        m_axis_tvalid_reg <= 1;
                        sampling_reg <= 1;
                        m_axis_tdata_reg <= bram_dout;
                        if((clk_div_counter - 1 > reg_sweep_clk_div) && (sweep_addr == reg_sweep_max_addr + 1)) begin
                            state <= LAST;
                            m_axis_tlast_reg <= 1;
                        end else if (clk_div_counter == reg_sweep_clk_div) begin
                            sweep_addr <= sweep_addr + 1;
                            clk_div_counter <= 0;
                        end else begin
                            clk_div_counter <= clk_div_counter + 1;
                        end
                    end
                end
                
                LAST: begin
                    if (m_axis_tready) begin
                        m_axis_tvalid_reg <= 0;
                        sampling_reg <= 0;
                        m_axis_tlast_reg <= 0;
                        sweep_addr <= 0;
                        clk_div_counter <= 0;
                        m_axis_tdata_reg <= 0;
                        state <= IDLE;
                        clear_reg_start <= 1;
                        
                    end                
                end
                
                default: state <= IDLE;
            endcase
        end        
    end
    // AXI-STREAM MASTER: Signals
    assign m_axis_tdata = m_axis_tdata_reg;
    assign m_axis_tvalid = m_axis_tvalid_reg;
    assign m_axis_tlast = m_axis_tlast_reg;
    assign m_axis_tkeep = 2'b11; 
    
    // BRAM: Signals
    assign bram_addr = sweep_addr[13:0];
    assign bram_we = 1'b0;
    assign bram_rst = 1'b0;
    assign bram_clk = clk;
    assign bram_en = m_axis_tready; // Only fetch next value if prev clock cycle was OK
    
    // External Logic Signals
    assign sampling = sampling_reg;
    
endmodule
