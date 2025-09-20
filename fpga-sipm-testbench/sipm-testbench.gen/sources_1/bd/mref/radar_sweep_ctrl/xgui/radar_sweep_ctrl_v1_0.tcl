# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "REG_START_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REG_SWEEP_CLK_DIV_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "REG_SWEEP_MAX_ADDR_ADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.REG_START_ADDR { PARAM_VALUE.REG_START_ADDR } {
	# Procedure called to update REG_START_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REG_START_ADDR { PARAM_VALUE.REG_START_ADDR } {
	# Procedure called to validate REG_START_ADDR
	return true
}

proc update_PARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR { PARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR } {
	# Procedure called to update REG_SWEEP_CLK_DIV_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR { PARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR } {
	# Procedure called to validate REG_SWEEP_CLK_DIV_ADDR
	return true
}

proc update_PARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR { PARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR } {
	# Procedure called to update REG_SWEEP_MAX_ADDR_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR { PARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR } {
	# Procedure called to validate REG_SWEEP_MAX_ADDR_ADDR
	return true
}


proc update_MODELPARAM_VALUE.REG_START_ADDR { MODELPARAM_VALUE.REG_START_ADDR PARAM_VALUE.REG_START_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REG_START_ADDR}] ${MODELPARAM_VALUE.REG_START_ADDR}
}

proc update_MODELPARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR { MODELPARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR PARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR}] ${MODELPARAM_VALUE.REG_SWEEP_CLK_DIV_ADDR}
}

proc update_MODELPARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR { MODELPARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR PARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR}] ${MODELPARAM_VALUE.REG_SWEEP_MAX_ADDR_ADDR}
}

