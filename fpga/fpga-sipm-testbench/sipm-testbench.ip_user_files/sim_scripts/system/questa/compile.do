vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_21
vlib questa_lib/msim/processing_system7_vip_v1_0_23
vlib questa_lib/msim/proc_sys_reset_v5_0_17
vlib questa_lib/msim/axi_jtag_v1_0_3
vlib questa_lib/msim/bsip_v1_1_1
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/interrupt_control_v3_1_5
vlib questa_lib/msim/axi_gpio_v2_0_37
vlib questa_lib/msim/xlconstant_v1_1_10
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_35
vlib questa_lib/msim/dist_mem_gen_v8_0_17
vlib questa_lib/msim/axi_quad_spi_v3_2_34
vlib questa_lib/msim/axi_datamover_v5_1_37
vlib questa_lib/msim/axi_sg_v4_1_21
vlib questa_lib/msim/axi_dma_v7_1_36
vlib questa_lib/msim/gigantic_mux

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 questa_lib/msim/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 questa_lib/msim/processing_system7_vip_v1_0_23
vmap proc_sys_reset_v5_0_17 questa_lib/msim/proc_sys_reset_v5_0_17
vmap axi_jtag_v1_0_3 questa_lib/msim/axi_jtag_v1_0_3
vmap bsip_v1_1_1 questa_lib/msim/bsip_v1_1_1
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_5 questa_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_37 questa_lib/msim/axi_gpio_v2_0_37
vmap xlconstant_v1_1_10 questa_lib/msim/xlconstant_v1_1_10
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 questa_lib/msim/axi_register_slice_v2_1_35
vmap dist_mem_gen_v8_0_17 questa_lib/msim/dist_mem_gen_v8_0_17
vmap axi_quad_spi_v3_2_34 questa_lib/msim/axi_quad_spi_v3_2_34
vmap axi_datamover_v5_1_37 questa_lib/msim/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 questa_lib/msim/axi_sg_v4_1_21
vmap axi_dma_v7_1_36 questa_lib/msim/axi_dma_v7_1_36
vmap gigantic_mux questa_lib/msim/gigantic_mux

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"/opt/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_pll_0_0/system_pll_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_pll_0_0/system_pll_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_ps_0_0/sim/system_ps_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_rst_0_0/sim/system_rst_0_0.vhd" \

vlog -work axi_jtag_v1_0_3 -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/1282/hdl/axi_jtag_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_debug_bridge_0_1/bd_0/ip/ip_0/sim/bd_ddb4_axi_jtag_0.v" \

vlog -work bsip_v1_1_1 -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f5cf/hdl/bsip_v1_1_rfs.v" \

vcom -work bsip_v1_1_1 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f5cf/hdl/bsip_v1_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_debug_bridge_0_1/bd_0/ip/ip_1/sim/bd_ddb4_bsip_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_debug_bridge_0_1/bd_0/sim/bd_ddb4.v" \
"../../../bd/system/ip/system_debug_bridge_0_1/sim/system_debug_bridge_0_1.v" \
"../../../bd/system/ip/system_axis_adc_0_0/sim/system_axis_adc_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_5 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_37 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0271/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_axi_gpio_0_1/sim/system_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/sim/bd_8422.v" \

vlog -work xlconstant_v1_1_10 -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_0/sim/bd_8422_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_1/sim/bd_8422_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_2/sim/bd_8422_arinsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_3/sim/bd_8422_rinsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_4/sim/bd_8422_awinsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_5/sim/bd_8422_winsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_6/sim/bd_8422_binsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_7/sim/bd_8422_aroutsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_8/sim/bd_8422_routsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_9/sim/bd_8422_awoutsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_10/sim/bd_8422_woutsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_11/sim/bd_8422_boutsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_12/sim/bd_8422_arni_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_13/sim/bd_8422_rni_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_14/sim/bd_8422_awni_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_15/sim/bd_8422_wni_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_16/sim/bd_8422_bni_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_17/sim/bd_8422_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_18/sim/bd_8422_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_19/sim/bd_8422_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_20/sim/bd_8422_s00a2s_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_21/sim/bd_8422_sarn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_22/sim/bd_8422_srn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_23/sim/bd_8422_sawn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_24/sim/bd_8422_swn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_25/sim/bd_8422_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_26/sim/bd_8422_m00s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_27/sim/bd_8422_m00arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_28/sim/bd_8422_m00rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_29/sim/bd_8422_m00awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_30/sim/bd_8422_m00wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_31/sim/bd_8422_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_32/sim/bd_8422_m00e_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_33/sim/bd_8422_m01s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_34/sim/bd_8422_m01arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_35/sim/bd_8422_m01rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_36/sim/bd_8422_m01awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_37/sim/bd_8422_m01wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_38/sim/bd_8422_m01bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_39/sim/bd_8422_m01e_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_40/sim/bd_8422_m02s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_41/sim/bd_8422_m02arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_42/sim/bd_8422_m02rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_43/sim/bd_8422_m02awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_44/sim/bd_8422_m02wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_45/sim/bd_8422_m02bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_46/sim/bd_8422_m02e_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_47/sim/bd_8422_m03s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_48/sim/bd_8422_m03arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_49/sim/bd_8422_m03rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_50/sim/bd_8422_m03awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_51/sim/bd_8422_m03wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_52/sim/bd_8422_m03bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_53/sim/bd_8422_m03e_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_54/sim/bd_8422_m04s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_55/sim/bd_8422_m04arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_56/sim/bd_8422_m04rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_57/sim/bd_8422_m04awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_58/sim/bd_8422_m04wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_59/sim/bd_8422_m04bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_60/sim/bd_8422_m04e_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_61/sim/bd_8422_m05s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_62/sim/bd_8422_m05arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_63/sim/bd_8422_m05rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_64/sim/bd_8422_m05awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_65/sim/bd_8422_m05wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_66/sim/bd_8422_m05bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_1/bd_0/ip/ip_67/sim/bd_8422_m05e_0.sv" \

vlog -work axi_register_slice_v2_1_35 -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_1/sim/system_axi_smc_1.sv" \

vlog -work dist_mem_gen_v8_0_17 -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ca90/simulation/dist_mem_gen_v8_0.v" \

vcom -work axi_quad_spi_v3_2_34 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/8d32/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_axi_quad_spi_0_0/sim/system_axi_quad_spi_0_0.vhd" \

vcom -work axi_datamover_v5_1_37 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_36 -64 -93  \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/cb19/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/sim/bd_919a.v" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_0/sim/bd_919a_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_1/sim/bd_919a_psr_aclk_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_21 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_23 -L xilinx_vip "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_2/sim/bd_919a_s00mmu_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_3/sim/bd_919a_s00tr_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_4/sim/bd_919a_s00sic_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_5/sim/bd_919a_s00a2s_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_6/sim/bd_919a_sawn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_7/sim/bd_919a_swn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_8/sim/bd_919a_sbn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_9/sim/bd_919a_m00s2a_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/bd_0/ip/ip_10/sim/bd_919a_m00e_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0_1/sim/system_smartconnect_0_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_adc_sampler_0_0/sim/system_adc_sampler_0_0.v" \
"../../../bd/system/ip/system_system_ila_0_2/bd_0/sim/bd_1439.v" \
"../../../bd/system/ip/system_system_ila_0_2/bd_0/ip/ip_0/sim/bd_1439_ila_lib_0.v" \

vlog -work gigantic_mux -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/b2b0/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/5431/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/4e08/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/537f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d41f/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0de9/hdl" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" \
"../../../bd/system/ip/system_system_ila_0_2/bd_0/ip/ip_1/bd_1439_g_inst_0_gigantic_mux.v" \
"../../../bd/system/ip/system_system_ila_0_2/bd_0/ip/ip_1/sim/bd_1439_g_inst_0.v" \
"../../../bd/system/ip/system_system_ila_0_2/sim/system_system_ila_0_2.v" \
"../../../bd/system/ip/system_histogram_0_0/sim/system_histogram_0_0.v" \
"../../../bd/system/ip/system_vio_0_0/sim/system_vio_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

