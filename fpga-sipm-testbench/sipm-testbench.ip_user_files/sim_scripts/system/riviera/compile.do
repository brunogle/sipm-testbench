transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_21
vlib riviera/processing_system7_vip_v1_0_23
vlib riviera/proc_sys_reset_v5_0_17
vlib riviera/xlconstant_v1_1_10
vlib riviera/smartconnect_v1_0
vlib riviera/axi_register_slice_v2_1_35
vlib riviera/axi_jtag_v1_0_3
vlib riviera/bsip_v1_1_1
vlib riviera/axi_bram_ctrl_v4_1_13
vlib riviera/blk_mem_gen_v8_4_11
vlib riviera/axi_datamover_v5_1_37
vlib riviera/axi_sg_v4_1_21
vlib riviera/axi_dma_v7_1_36

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_21 riviera/axi_vip_v1_1_21
vmap processing_system7_vip_v1_0_23 riviera/processing_system7_vip_v1_0_23
vmap proc_sys_reset_v5_0_17 riviera/proc_sys_reset_v5_0_17
vmap xlconstant_v1_1_10 riviera/xlconstant_v1_1_10
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_register_slice_v2_1_35 riviera/axi_register_slice_v2_1_35
vmap axi_jtag_v1_0_3 riviera/axi_jtag_v1_0_3
vmap bsip_v1_1_1 riviera/bsip_v1_1_1
vmap axi_bram_ctrl_v4_1_13 riviera/axi_bram_ctrl_v4_1_13
vmap blk_mem_gen_v8_4_11 riviera/blk_mem_gen_v8_4_11
vmap axi_datamover_v5_1_37 riviera/axi_datamover_v5_1_37
vmap axi_sg_v4_1_21 riviera/axi_sg_v4_1_21
vmap axi_dma_v7_1_36 riviera/axi_dma_v7_1_36

vlog -work xilinx_vip  -incr "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"/opt/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/2025.1/Vivado/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/opt/Xilinx/2025.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_pll_0_0/system_pll_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_pll_0_0/system_pll_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_21  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f16f/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_23  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_ps_0_0/sim/system_ps_0_0.v" \

vcom -work proc_sys_reset_v5_0_17 -93  -incr \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/9438/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_rst_0_0/sim/system_rst_0_0.vhd" \

vlog -work xlconstant_v1_1_10  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a165/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_arsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_rsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_awsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_wsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d800/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/dce3/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_sarn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_srn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_13/sim/bd_44e3_sawn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_14/sim/bd_44e3_swn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_15/sim/bd_44e3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_16/sim/bd_44e3_m00s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_17/sim/bd_44e3_m00arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/sim/bd_44e3_m00rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/sim/bd_44e3_m00awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/sim/bd_44e3_m00wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/sim/bd_44e3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/0133/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_22/sim/bd_44e3_m00e_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_23/sim/bd_44e3_m01s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_24/sim/bd_44e3_m01arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/sim/bd_44e3_m01rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_26/sim/bd_44e3_m01awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_27/sim/bd_44e3_m01wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_28/sim/bd_44e3_m01bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_29/sim/bd_44e3_m01e_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_30/sim/bd_44e3_m02s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_31/sim/bd_44e3_m02arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_32/sim/bd_44e3_m02rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_33/sim/bd_44e3_m02awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_34/sim/bd_44e3_m02wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_35/sim/bd_44e3_m02bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_36/sim/bd_44e3_m02e_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_37/sim/bd_44e3_m03s2a_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_38/sim/bd_44e3_m03arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_39/sim/bd_44e3_m03rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_40/sim/bd_44e3_m03awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_41/sim/bd_44e3_m03wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_42/sim/bd_44e3_m03bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_43/sim/bd_44e3_m03e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \

vlog -work axi_register_slice_v2_1_35  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/c5b7/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.sv" \

vlog -work axi_jtag_v1_0_3  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/1282/hdl/axi_jtag_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_debug_bridge_0_1/bd_0/ip/ip_0/sim/bd_ddb4_axi_jtag_0.v" \

vlog -work bsip_v1_1_1  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f5cf/hdl/bsip_v1_1_rfs.v" \

vcom -work bsip_v1_1_1 -93  -incr \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f5cf/hdl/bsip_v1_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_debug_bridge_0_1/bd_0/ip/ip_1/sim/bd_ddb4_bsip_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_debug_bridge_0_1/bd_0/sim/bd_ddb4.v" \
"../../../bd/system/ip/system_debug_bridge_0_1/sim/system_debug_bridge_0_1.v" \
"../../../bd/system/ip/system_axis_dac_0_0/sim/system_axis_dac_0_0.v" \
"../../../bd/system/ip/system_signal_generator_0_0/sim/system_signal_generator_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_13 -93  -incr \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/2f03/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_axi_bram_ctrl_0_0/sim/system_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_11  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a32c/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_blk_mem_gen_0_0/sim/system_blk_mem_gen_0_0.v" \

vcom -work axi_datamover_v5_1_37 -93  -incr \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/d44a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_21 -93  -incr \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/b193/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_36 -93  -incr \
"../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/cb19/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_axis_adc_0_0/sim/system_axis_adc_0_0.v" \
"../../../bd/system/ip/system_adc_sampler_0_0/sim/system_adc_sampler_0_0.v" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_0/sim/bd_919a_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/sim/bd_919a_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_2/sim/bd_919a_s00mmu_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_3/sim/bd_919a_s00tr_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_4/sim/bd_919a_s00sic_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_5/sim/bd_919a_s00a2s_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_6/sim/bd_919a_sawn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_7/sim/bd_919a_swn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_8/sim/bd_919a_sbn_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_9/sim/bd_919a_m00s2a_0.sv" \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_10/sim/bd_919a_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_smartconnect_0_0/bd_0/sim/bd_919a.v" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/ip/system_smartconnect_0_0/sim/system_smartconnect_0_0.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a9be" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/6cfa/hdl" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/f0b6/hdl/verilog" "+incdir+../../../../sipm-testbench.gen/sources_1/bd/system/ipshared/a8e4/hdl/verilog" "+incdir+../../../../../../../../../opt/Xilinx/2025.1/data/rsb/busdef" "+incdir+/opt/Xilinx/2025.1/Vivado/data/xilinx_vip/include" -l xilinx_vip -l xpm -l xil_defaultlib -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_21 -l processing_system7_vip_v1_0_23 -l proc_sys_reset_v5_0_17 -l xlconstant_v1_1_10 -l smartconnect_v1_0 -l axi_register_slice_v2_1_35 -l axi_jtag_v1_0_3 -l bsip_v1_1_1 -l axi_bram_ctrl_v4_1_13 -l blk_mem_gen_v8_4_11 -l axi_datamover_v5_1_37 -l axi_sg_v4_1_21 -l axi_dma_v7_1_36 \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

