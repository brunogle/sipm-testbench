`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2025 10:51:05 PM
// Design Name: 
// Module Name: histogram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module histogram #(
    parameter integer DATA_WIDTH = 4,
    parameter integer BINS = 1 << DATA_WIDTH


)(
    
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
    
    input wire [DATA_WIDTH:0]   data_in,
    input wire          wr_en
    );


    reg [31:0]   rw_ctrl; // Enable, reset, 
     
     
    // Internal signals
    reg [31:0] rdata_reg;
    reg rvalid_reg, bvalid_reg;
    reg s_axi_awready_reg, wready_reg, arready_reg;

    
    
    reg unsigned [31:0] channels [0:(BINS-1)];
    reg unsigned [63:0] counter;
    integer i;

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
    end
    wire channel_read = s_axi_araddr[(DATA_WIDTH-1):0];
    // Read address handshake
    always @(posedge clk) begin
        if (!resetn) begin
            arready_reg <= 1'b0;
            rvalid_reg <= 1'b0;
        end else if (s_axi_arvalid && !arready_reg) begin
            arready_reg <= 1'b1;
            if (s_axi_araddr[16] == 1'd0) begin
                case (s_axi_araddr[5:2])
                    4'd00000: rdata_reg <= rw_ctrl;
                    4'd00001: rdata_reg <= counter;
                    default: rdata_reg <= 32'hdeadbeef; // Default value
                endcase    
            end else begin
                rdata_reg <= channels[channel_read];
            end       
            rvalid_reg <= 1'b1;
        end else if (s_axi_rready && rvalid_reg) begin
            rvalid_reg <= 1'b0;
        end else begin
            arready_reg <= 1'b0;
        end
    end

    
    always @(posedge clk) begin
        
        
        if(rw_ctrl & 32'b10 || !resetn) begin
            for(i = 0; i < BINS; i = i + 1) begin
                channels[i] <= 0;
            end
            counter <= 0;
        end else if (wr_en && (rw_ctrl & 32'b10)) begin
            channels[data_in] <= channels[data_in] + 1;
            counter <= counter + 1;
        end
    end

endmodule
