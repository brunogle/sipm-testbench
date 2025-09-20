`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2025 11:47:44 AM
// Design Name: 
// Module Name: bram_byte2word
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


module bram_byte2word # 
(
    parameter integer BRAM_WORD_ADDR_WIDTH    = 13, // 0x....00
    parameter integer BRAM_DATA_WIDTH    = 32 // 0x....00
)
(
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *)  output wire bram_clk,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT RST" *)  output wire bram_rst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT EN" *)   output wire bram_en,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) output wire [BRAM_WORD_ADDR_WIDTH-1:0] bram_addr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *) input  wire [BRAM_DATA_WIDTH-1:0] bram_dout,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DIN" *) output  wire [BRAM_DATA_WIDTH-1:0] bram_din,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT WE" *)   output wire [3:0]  bram_we,


    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT CLK" *)  input wire bram_ctrl_clk,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT RST" *)  input wire bram_ctrl_rst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT EN" *)   input wire bram_ctrl_en,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT ADDR" *) input wire [BRAM_WORD_ADDR_WIDTH+1:0] bram_ctrl_addr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT DOUT" *) output  wire [BRAM_DATA_WIDTH-1:0] bram_ctrl_dout,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT DIN" *)  input  wire [BRAM_DATA_WIDTH-1:0] bram_ctrl_din,
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT WE" *)   input wire [3:0]  bram_ctrl_we

    

);
    
    assign bram_clk = bram_ctrl_clk;
    assign bram_rst = bram_ctrl_rst;
    assign bram_en = bram_ctrl_en;
    assign bram_addr = bram_ctrl_addr[BRAM_WORD_ADDR_WIDTH+1:2];
    assign bram_ctrl_dout = bram_dout;
    assign bram_ctrl_din = bram_din;
    assign bram_we = bram_ctrl_we;
    
    
endmodule