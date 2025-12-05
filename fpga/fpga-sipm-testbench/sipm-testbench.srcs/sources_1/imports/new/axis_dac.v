`timescale 1 ns / 1 ps
//////////////////////////////////////////////////////////////////////////////////
// Company:   UTN
// Engineer:  Bruno Glecer
// 
// Create Date: 07/27/2025 08:50:59 AM
// Design Name: AXIS DAC
// Module Name: axis_dac
// Project Name:  
// Target Devices: XC7Z010CLG400 (Red Pitaya 125-14 v1)
// Tool Versions: 2025.1
// Description: Receives data from AXIS Stream to control DAC on Red Pitaya
// DAC Model: AD9767
// 
// Dependencies: 
// 
// Revision: 1
// Revision 0.01 - File Created
// Additional Comments:
//
// This file is based on code from Pavel Demin, licensed under the MIT License.
// Original Code: https://github.com/pavel-demin/red-pitaya-notes
// The MIT License (MIT)
// Copyright (c) 2014-present Pavel Demin
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
// the Software, and to permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//////////////////////////////////////////////////////////////////////////////////



module axis_dac
(
  // PLL signals
  input  wire                        aclk,
  input  wire                        ddr_clk,
  input  wire                        wrt_clk,
  input  wire                        locked,

  // DAC signals
  output wire                        dac_cl,
  output wire                        dac_rst,
  output wire                        dac_sel,
  output wire                        dac_wrt,
  output wire [13:0]   dac_dat,
  
  // Slave side
  output wire                        S01_AXIS_TREADY,
  input  wire [15:0] S01_AXIS_TDATA,
  input  wire                        S01_AXIS_TVALID,
  
  // Slave side
  output wire                        S02_AXIS_TREADY,
  input  wire [15:0] S02_AXIS_TDATA,
  input  wire                        S02_AXIS_TVALID
);

  reg [13:0] int_dat_a_reg;
  reg [13:0] int_dat_b_reg;
  reg [1:0] int_rst_reg;

  wire [13:0] int_dat_a_wire;
  wire [13:0] int_dat_b_wire;

  assign int_dat_a_wire = S01_AXIS_TDATA[13:0];
  assign int_dat_b_wire = S02_AXIS_TDATA[13:0];

  genvar j;

  always @(posedge aclk)
  begin
    if(~locked)
    begin
      int_dat_a_reg <= {(14){1'b0}};
      int_dat_b_reg <= {(14){1'b0}};
    end
    else
    begin
      int_dat_a_reg <= {int_dat_a_wire[13], ~int_dat_a_wire[12:0]};
      int_dat_b_reg <= {int_dat_b_wire[13], ~int_dat_b_wire[12:0]};
    end
    int_rst_reg <= {int_rst_reg[0], ~locked};
  end

  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0)
  ) ODDR_rst (
    .Q(dac_rst),
    .D1(int_rst_reg[1]),
    .D2(int_rst_reg[1]),
    .C(aclk),
    .CE(1'b1),
    .R(1'b0),
    .S(1'b0)
  );

  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0)
  ) ODDR_sel (
    .Q(dac_sel),
    .D1(1'b1),
    .D2(1'b0),
    .C(aclk),
    .CE(1'b1),
    .R(1'b0),
    .S(1'b0)
  );

  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0)
  ) ODDR_wrt (
    .Q(dac_wrt),
    .D1(1'b1),
    .D2(1'b0),
    .C(wrt_clk),
    .CE(1'b1),
    .R(1'b0),
    .S(1'b0)
  );

  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0)
  ) ODDR_clk (
    .Q(dac_cl),
    .D1(1'b1),
    .D2(1'b0),
    .C(ddr_clk),
    .CE(1'b1),
    .R(1'b0),
    .S(1'b0)
  );

  generate
    for(j = 0; j < 14; j = j + 1)
    begin : DAC_DAT
      ODDR #(
        .DDR_CLK_EDGE("SAME_EDGE"),
        .INIT(1'b0)
      ) ODDR_inst (
        .Q(dac_dat[j]),
        .D1(int_dat_b_reg[j]),
        .D2(int_dat_a_reg[j]),
        .C(aclk),
        .CE(1'b1),
        .R(1'b0),
        .S(1'b0)
      );
    end
  endgenerate

  assign S01_AXIS_TREADY = 1'b1;
  assign S02_AXIS_TREADY = 1'b1;
    
endmodule
