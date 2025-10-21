VIVADO = vivado -nolog -nojournal
FPGA_PROJECT_NAME = sipm-testbench
FPGA_PROJECT_DIR  = ./fpga-sipm-testbench

FPGA_PROJECT_XPR = $(FPGA_PROJECT_DIR)/$(FPGA_PROJECT_NAME).xpr
FPGA_PROJECT_BIT = $(FPGA_PROJECT_DIR)/$(FPGA_PROJECT_NAME).bit
FPGA_PROJECT_BIT_VIVADO = $(FPGA_PROJECT_DIR)/$(FPGA_PROJECT_NAME).runs/impl_1/system_wrapper.bit
RED_PITAYA_BITSTREAM_DIR = /root
RED_PITAYA_SSH = root@10.0.28.90

.PHONY: xpr clean

clear:

xpr: $(FPGA_PROJECT_XPR)

bit: $(FPGA_PROJECT_BIT)

gui:
	nohup $(VIVADO) $(FPGA_PROJECT_XPR) >/dev/null 2>&1 < /dev/null &

upload:
	scp $(FPGA_PROJECT_BIT)  $(RED_PITAYA_SSH):$(RED_PITAYA_BITSTREAM_DIR)
	ssh $(RED_PITAYA_SSH) "/opt/xvc/xvcstop"
	ssh $(RED_PITAYA_SSH) "cat $(RED_PITAYA_BITSTREAM_DIR)/$(FPGA_PROJECT_NAME).bit > /dev/xdevcfg"

upload_vivado:
	scp $(FPGA_PROJECT_BIT_VIVADO)  $(RED_PITAYA_SSH):$(RED_PITAYA_BITSTREAM_DIR)
	ssh $(RED_PITAYA_SSH) "/opt/xvc/xvcstop"
	ssh $(RED_PITAYA_SSH) "cat $(RED_PITAYA_BITSTREAM_DIR)/system_wrapper.bit > /dev/xdevcfg"

$(FPGA_PROJECT_XPR):
	$(VIVADO) -mode batch -source vivado_setup_project.tcl -tclargs $(FPGA_PROJECT_NAME) $(FPGA_PROJECT_DIR)

$(FPGA_PROJECT_BIT): FORCE
	$(VIVADO) -mode batch -source bitstream.tcl -tclargs $(FPGA_PROJECT_NAME) $(FPGA_PROJECT_DIR)


FORCE: ;
