// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:bram_byte2word:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module system_bram_byte2word_0_0 (
  bram_clk,
  bram_rst,
  bram_en,
  bram_addr,
  bram_dout,
  bram_din,
  bram_we,
  bram_ctrl_clk,
  bram_ctrl_rst,
  bram_ctrl_en,
  bram_ctrl_addr,
  bram_ctrl_dout,
  bram_ctrl_din,
  bram_ctrl_we
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORT, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *)
output wire bram_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT RST" *)
output wire bram_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT EN" *)
output wire bram_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *)
output wire [12 : 0] bram_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *)
input wire [31 : 0] bram_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DIN" *)
output wire [31 : 0] bram_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT WE" *)
output wire [3 : 0] bram_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_CTRL_PORT, MEM_SIZE 32768, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *)
input wire bram_ctrl_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT RST" *)
input wire bram_ctrl_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT EN" *)
input wire bram_ctrl_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT ADDR" *)
input wire [14 : 0] bram_ctrl_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT DOUT" *)
output wire [31 : 0] bram_ctrl_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT DIN" *)
input wire [31 : 0] bram_ctrl_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_CTRL_PORT WE" *)
input wire [3 : 0] bram_ctrl_we;

  bram_byte2word #(
    .BRAM_WORD_ADDR_WIDTH(13),
    .BRAM_DATA_WIDTH(32)
  ) inst (
    .bram_clk(bram_clk),
    .bram_rst(bram_rst),
    .bram_en(bram_en),
    .bram_addr(bram_addr),
    .bram_dout(bram_dout),
    .bram_din(bram_din),
    .bram_we(bram_we),
    .bram_ctrl_clk(bram_ctrl_clk),
    .bram_ctrl_rst(bram_ctrl_rst),
    .bram_ctrl_en(bram_ctrl_en),
    .bram_ctrl_addr(bram_ctrl_addr),
    .bram_ctrl_dout(bram_ctrl_dout),
    .bram_ctrl_din(bram_ctrl_din),
    .bram_ctrl_we(bram_ctrl_we)
  );
endmodule
