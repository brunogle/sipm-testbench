`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:   UTN
// Engineer:  Bruno Glecer
// 
// Create Date: 07/28/2025 11:08:44 PM
// Design Name:  ADC Sampler
// Module Name: adc_sampler
// Project Name:   FMCW Radar
// Target Devices:  XC7Z010CLG400
// Tool Versions:  2025.1
// Description:    Intended to sample streams of data from ADC. Relays AXIX data when
// sample is driven high, and ends when its driven low, while sending a TLAST signal
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adc_sampler (
    input wire          clk,
    input wire          resetn,
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
    
     // Slave side
    output wire                        s_axis_tready,
    input  wire [15:0]                 s_axis_tdata,
    input  wire                        s_axis_tvalid,

    // Master side
    input   wire                        m_axis_tready,
    output  wire [15:0]                 m_axis_tdata,
    output  wire                        m_axis_tvalid,
    output  wire                        m_axis_tlast,
    output  wire  [0:3]                 m_axis_tkeep
);


    reg [31:0]   rw_reg_start;
    reg [31:0]   rw_reg_count;
    
    // Internal signals
    reg [31:0] rdata_reg;
    reg rvalid_reg, bvalid_reg;
    reg s_axi_awready_reg, wready_reg, arready_reg;
    
    reg clear_start_reg;
    
    assign s_axi_awready = s_axi_awready_reg;
    assign s_axi_wready = wready_reg;
    assign s_axi_bresp = 2'b00; // OKAY response
    assign s_axi_bvalid = bvalid_reg;
    assign s_axi_arready = arready_reg;
    assign s_axi_rdata = rdata_reg;
    assign s_axi_rresp = 2'b00; // OKAY response
    assign s_axi_rvalid = rvalid_reg;

    // Write address handshake
    always @(posedge clk) begin
        if (!resetn) begin
            s_axi_awready_reg <= 1'b0;
        end else if (s_axi_awvalid && !s_axi_awready_reg) begin
            s_axi_awready_reg <= 1'b1;
        end else begin
            s_axi_awready_reg <= 1'b0;
        end
    end

    // Write data handshake
    always @(posedge clk) begin
        if (!resetn) begin
            wready_reg <= 1'b0;
            bvalid_reg <= 1'b0;
        end else if (s_axi_wvalid && !wready_reg) begin
            wready_reg <= 1'b1;
            case (s_axi_awaddr[5:2])
                4'd0: begin
                    if (s_axi_wstrb[0]) rw_reg_start[7:0] <= s_axi_wdata[7:0];
                    if (s_axi_wstrb[1]) rw_reg_start[15:8] <= s_axi_wdata[15:8];
                    if (s_axi_wstrb[2]) rw_reg_start[23:16] <= s_axi_wdata[23:16];
                    if (s_axi_wstrb[3]) rw_reg_start[31:24] <= s_axi_wdata[31:24];
                end
                4'd1: begin
                    if (s_axi_wstrb[0]) rw_reg_count[7:0] <= s_axi_wdata[7:0];
                    if (s_axi_wstrb[1]) rw_reg_count[15:8] <= s_axi_wdata[15:8];
                    if (s_axi_wstrb[2]) rw_reg_count[23:16] <= s_axi_wdata[23:16];
                    if (s_axi_wstrb[3]) rw_reg_count[31:24] <= s_axi_wdata[31:24];
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
        
        if(clear_start_reg) begin
            rw_reg_start <= 0;
        end
    end

    // Read address handshake
    always @(posedge clk) begin
        if (!resetn) begin
            arready_reg <= 1'b0;
            rvalid_reg <= 1'b0;
        end else if (s_axi_arvalid && !arready_reg) begin
            arready_reg <= 1'b1;
            case (s_axi_araddr[5:2])
                4'd0: rdata_reg <= rw_reg_start;
                4'd1: rdata_reg <= rw_reg_count;
                default: rdata_reg <= 32'h00000000; // Default value
            endcase
            rvalid_reg <= 1'b1;
        end else if (s_axi_rready && rvalid_reg) begin
            rvalid_reg <= 1'b0;
        end else begin
            arready_reg <= 1'b0;
        end
    end
   
    reg [15:0]           buffer_data;
    reg                  buffer_valid;
    reg                  buffer_tlast;
    reg [0:1]            buffer_tkeep;
    
    reg [31:0]           count;
    
    assign m_axis_tdata  = buffer_data;
    assign m_axis_tvalid = buffer_valid;
    assign s_axis_tready = 1'b1;
    assign m_axis_tkeep =  2'b11;
    assign m_axis_tlast = buffer_tlast;
    
    always @(posedge clk) begin
        if (!resetn) begin
            buffer_data  <= 0;
            buffer_valid <= 0;
            buffer_tlast <= 0;
            clear_start_reg <= 0;
        end else begin
            if(rw_reg_start && (count < rw_reg_count - 1) && !clear_start_reg) begin
                buffer_valid <= 1;
                buffer_data <= s_axis_tdata;
                count <= count + 1;      
            end else if(rw_reg_start && (count == rw_reg_count - 1) && !clear_start_reg) begin
                buffer_tlast <= 1;
                buffer_data <= s_axis_tdata;
                count <= count + 1;
            end else if(rw_reg_start) begin
                buffer_tlast <= 0;
                buffer_valid <= 0;
                buffer_data <= 0;
                count <= 0;
                clear_start_reg <= 1;
            end else begin
                buffer_tlast <= 0;
                buffer_data <= 0;
                buffer_valid <= 0;
                clear_start_reg <= 0;
            end
        end
    end

    
    
endmodule
