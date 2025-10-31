`timescale 1ns / 1ps


// 32 bit Dual-Port BRAM Module to store histogram data
module rams_tdp_rf_rf
    #(parameter ADDR_WIDTH = 13)
    (clka,clkb,ena,enb,wea,web,addra,addrb,dia,dib,doa,dob);
    localparam DEPTH = 1 << ADDR_WIDTH;

    input clka,clkb,ena,enb,wea,web;
    input [ADDR_WIDTH:0] addra,addrb;
    input [31:0] dia,dib;
    output [31:0] doa,dob;
    reg [31:0] ram [DEPTH:0];
    reg [31:0] doa,dob;
    
    always @(posedge clka) begin
        if (ena) begin
            if (wea)
                ram[addra] <= dia;
            doa <= ram[addra];
        end
    end
    
    always @(posedge clkb) begin
        if (enb) begin
            if (web)
                ram[addrb] <= dib;
            dob <= ram[addrb];
        end
    end
    
endmodule



module histogram #(
    parameter integer DATA_WIDTH = 13
)(    
    input wire          clk,
    input wire          resetn,
    
    // --- AXI Register Interface
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
    
    // --- Data in interface
    input wire [DATA_WIDTH-1:0]   data_in, // Value to increment in histogram
    input wire                    wr_en // Clocked rising edge
    );

    localparam integer BINS = 1 << DATA_WIDTH;

    // Control Register (Ox0 offset)
    // b0: Enable (active high)
    // b1: Reset (active high, bit resets to 0 after reseting is complete)
    reg [31:0] rw_ctrl;
    
    // Counting register
    // Increments in 1 with each value added to histogram
    reg [63:0] counter;
    
    
    
    
    // --- Internal signals
    reg [31:0] rdata_reg;
    reg rvalid_reg, bvalid_reg;
    reg s_axi_awready_reg, wready_reg, arready_reg;
    
    // Bram reads require a clock cycle, this is used to
    // delay 1 clock cycle an AXI read operation from BRAM
    reg loading_data; 

    
    reg wea;
    reg [DATA_WIDTH-1:0] addra;
    reg [31:0] dia;
    wire [31:0] douta;
    
    wire [31:0] doutb; // Data read from BRAM, for reading histogram from AXI

    reg [DATA_WIDTH-1:0] reset_counter; // Used to sweep memory writing zeros on reset
    reg [1:0] state = 0; // State variable for main logic loop. 
    
        
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
                4'd0: begin // Write ctrl register
                    if (s_axi_wstrb[0]) rw_ctrl[7:0] <= s_axi_wdata[7:0];
                    if (s_axi_wstrb[1]) rw_ctrl[15:8] <= s_axi_wdata[15:8];
                    if (s_axi_wstrb[2]) rw_ctrl[23:16] <= s_axi_wdata[23:16];
                    if (s_axi_wstrb[3]) rw_ctrl[31:24] <= s_axi_wdata[31:24];
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
        
        
        // --- Alternative register modifications
        // Reset finished sets reset bit of ctrl register back to 0
        if(reset_counter == BINS-1) begin
            rw_ctrl[1] <= 1'b0;
        end
        
    end
    
    // Read address handshake
    always @(posedge clk) begin
        if (!resetn) begin
            arready_reg <= 1'b0;
            rvalid_reg <= 1'b0;
            loading_data <= 1'b0;
        end else if (s_axi_arvalid && !arready_reg) begin
            
            if (s_axi_araddr[16] == 1'd0) begin // If LSBs of addr is 0x0XXXX then it corresponds to registers
                case (s_axi_araddr[5:2])
                    4'd00000: rdata_reg <= rw_ctrl;
                    4'd00001: rdata_reg <= counter;
                    default: rdata_reg <= 32'hdeadbeef; // Default value
                endcase
                arready_reg <= 1'b1;
                rvalid_reg <= 1'b1;    
            
            // If LSBs of addr is 0x1XXXX then it corresponds to BRAM (Histogram) data
            end else if(!loading_data) begin // Wait 1 clock cycle before returning data
                rvalid_reg <= 1'b0;
                loading_data <= 1'b1;
            
            end else begin //  Read data from BRAM
                rdata_reg <= doutb;
                loading_data <= 1'b0;
                rvalid_reg <= 1'b1;
                arready_reg <= 1'b1;
            end
            
        end else if (s_axi_rready && rvalid_reg) begin
            rvalid_reg <= 1'b0;
        end else begin
            arready_reg <= 1'b0;
        end
    end
  
                
    // --- Instantiate the BRAM for AXI
    rams_tdp_rf_rf #(
        .ADDR_WIDTH(DATA_WIDTH)
    )
    ram_hist (
        // Port A is used for increment by 1 logic and reset logic
        .clka(clk),
        .ena(1'b1),  // Always enabled
        .wea(wea),   
        .addra(addra),
        .dia(dia),
        .doa(douta),
        
        // Port B is used for AXI data reading
        .clkb(clk),  
        .enb(1'b1),  // Always enabled
        .web(1'b0),  // Never write from port B                                   
        .addrb(s_axi_araddr[(DATA_WIDTH+1):0] >> 2), // Read address is always lowest AXI address bits
        .dib(32'b0), // Never write from port B
        .dob(doutb)
    );
    
    always @(posedge clk) begin
        
        if(!resetn) begin // Hardware reset
            reset_counter <= 0;
            wea <= 0;
            dia <= 0;
            addra <= 0;
            counter <= 0;
            
        end else if(rw_ctrl & 32'b10) begin // Reset all histogram values to 0
            wea <= 1'b1;
            dia <= 1'b0;
            addra <= reset_counter;
            counter <= 0;
            if(reset_counter == BINS-1) begin
                reset_counter <= 0;
            end else begin
                reset_counter <= reset_counter + 1;
            end
         
        end else if(wr_en && (rw_ctrl & 32'b1) && (state==0))  begin // Data is ready
            addra <= data_in; // Latch data to addra
            state <= 1;
         
        end else if(state==1)  begin
            state <= 2; // Wait one clock to read value from bram for incrementation
            
        end else if(state==2) begin
            wea <= 1;
            dia <= douta + 1; // Write new value to BRAM
            counter <= counter + 1;
            state <= 3;
            
        end else if(state==3)  begin
            wea <= 0;
            if(wr_en == 0)begin // Wait until wr_en is 0 again to finish
                state <= 0;
            end

        end else begin
            wea <= 0;
        end

    end

endmodule
