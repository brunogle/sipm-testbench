//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_d5b8.bd
//Design : bd_d5b8
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_d5b8,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_d5b8,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=None}" *) (* HW_HANDOFF = "system_system_ila_0_0.hwdef" *) 
module bd_d5b8
   (SLOT_0_SPI_io0_i,
    SLOT_0_SPI_io0_o,
    SLOT_0_SPI_io0_t,
    SLOT_0_SPI_io1_i,
    SLOT_0_SPI_io1_o,
    SLOT_0_SPI_io1_t,
    SLOT_0_SPI_sck_i,
    SLOT_0_SPI_sck_o,
    SLOT_0_SPI_sck_t,
    SLOT_0_SPI_ss_i,
    SLOT_0_SPI_ss_o,
    SLOT_0_SPI_ss_t,
    clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI IO0_I" *) (* X_INTERFACE_MODE = "Monitor SlaveType" *) input SLOT_0_SPI_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI IO0_O" *) input SLOT_0_SPI_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI IO0_T" *) input SLOT_0_SPI_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI IO1_I" *) input SLOT_0_SPI_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI IO1_O" *) input SLOT_0_SPI_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI IO1_T" *) input SLOT_0_SPI_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI SCK_I" *) input SLOT_0_SPI_sck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI SCK_O" *) input SLOT_0_SPI_sck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI SCK_T" *) input SLOT_0_SPI_sck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI SS_I" *) input [1:0]SLOT_0_SPI_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI SS_O" *) input [1:0]SLOT_0_SPI_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SLOT_0_SPI SS_T" *) input SLOT_0_SPI_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN system_pll_0_0_clk_out1, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;

  wire SLOT_0_SPI_io0_i;
  wire SLOT_0_SPI_io0_o;
  wire SLOT_0_SPI_io0_t;
  wire SLOT_0_SPI_io1_i;
  wire SLOT_0_SPI_io1_o;
  wire SLOT_0_SPI_io1_t;
  wire SLOT_0_SPI_sck_i;
  wire SLOT_0_SPI_sck_o;
  wire SLOT_0_SPI_sck_t;
  wire [1:0]SLOT_0_SPI_ss_i;
  wire [1:0]SLOT_0_SPI_ss_o;
  wire SLOT_0_SPI_ss_t;
  wire clk;

  bd_d5b8_ila_lib_0 ila_lib
       (.clk(clk),
        .probe0(SLOT_0_SPI_io0_i),
        .probe1(SLOT_0_SPI_io0_o),
        .probe10(SLOT_0_SPI_ss_o),
        .probe11(SLOT_0_SPI_ss_t),
        .probe2(SLOT_0_SPI_io0_t),
        .probe3(SLOT_0_SPI_io1_i),
        .probe4(SLOT_0_SPI_io1_o),
        .probe5(SLOT_0_SPI_io1_t),
        .probe6(SLOT_0_SPI_sck_i),
        .probe7(SLOT_0_SPI_sck_o),
        .probe8(SLOT_0_SPI_sck_t),
        .probe9(SLOT_0_SPI_ss_i));
endmodule
