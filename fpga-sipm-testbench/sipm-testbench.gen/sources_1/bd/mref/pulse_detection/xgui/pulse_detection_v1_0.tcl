# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "K" -parent ${Page_0}
  ipgui::add_param $IPINST -name "L" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_NUM" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_SHIFT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "OUT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PEAK_THRESH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.K { PARAM_VALUE.K } {
	# Procedure called to update K when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.K { PARAM_VALUE.K } {
	# Procedure called to validate K
	return true
}

proc update_PARAM_VALUE.L { PARAM_VALUE.L } {
	# Procedure called to update L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.L { PARAM_VALUE.L } {
	# Procedure called to validate L
	return true
}

proc update_PARAM_VALUE.M_NUM { PARAM_VALUE.M_NUM } {
	# Procedure called to update M_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_NUM { PARAM_VALUE.M_NUM } {
	# Procedure called to validate M_NUM
	return true
}

proc update_PARAM_VALUE.M_SHIFT { PARAM_VALUE.M_SHIFT } {
	# Procedure called to update M_SHIFT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_SHIFT { PARAM_VALUE.M_SHIFT } {
	# Procedure called to validate M_SHIFT
	return true
}

proc update_PARAM_VALUE.M_WIDTH { PARAM_VALUE.M_WIDTH } {
	# Procedure called to update M_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.M_WIDTH { PARAM_VALUE.M_WIDTH } {
	# Procedure called to validate M_WIDTH
	return true
}

proc update_PARAM_VALUE.OUT_WIDTH { PARAM_VALUE.OUT_WIDTH } {
	# Procedure called to update OUT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUT_WIDTH { PARAM_VALUE.OUT_WIDTH } {
	# Procedure called to validate OUT_WIDTH
	return true
}

proc update_PARAM_VALUE.PEAK_THRESH { PARAM_VALUE.PEAK_THRESH } {
	# Procedure called to update PEAK_THRESH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PEAK_THRESH { PARAM_VALUE.PEAK_THRESH } {
	# Procedure called to validate PEAK_THRESH
	return true
}

proc update_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to update WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WIDTH { PARAM_VALUE.WIDTH } {
	# Procedure called to validate WIDTH
	return true
}


proc update_MODELPARAM_VALUE.WIDTH { MODELPARAM_VALUE.WIDTH PARAM_VALUE.WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WIDTH}] ${MODELPARAM_VALUE.WIDTH}
}

proc update_MODELPARAM_VALUE.L { MODELPARAM_VALUE.L PARAM_VALUE.L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.L}] ${MODELPARAM_VALUE.L}
}

proc update_MODELPARAM_VALUE.K { MODELPARAM_VALUE.K PARAM_VALUE.K } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.K}] ${MODELPARAM_VALUE.K}
}

proc update_MODELPARAM_VALUE.M_WIDTH { MODELPARAM_VALUE.M_WIDTH PARAM_VALUE.M_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_WIDTH}] ${MODELPARAM_VALUE.M_WIDTH}
}

proc update_MODELPARAM_VALUE.M_SHIFT { MODELPARAM_VALUE.M_SHIFT PARAM_VALUE.M_SHIFT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_SHIFT}] ${MODELPARAM_VALUE.M_SHIFT}
}

proc update_MODELPARAM_VALUE.M_NUM { MODELPARAM_VALUE.M_NUM PARAM_VALUE.M_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.M_NUM}] ${MODELPARAM_VALUE.M_NUM}
}

proc update_MODELPARAM_VALUE.OUT_WIDTH { MODELPARAM_VALUE.OUT_WIDTH PARAM_VALUE.OUT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUT_WIDTH}] ${MODELPARAM_VALUE.OUT_WIDTH}
}

proc update_MODELPARAM_VALUE.PEAK_THRESH { MODELPARAM_VALUE.PEAK_THRESH PARAM_VALUE.PEAK_THRESH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PEAK_THRESH}] ${MODELPARAM_VALUE.PEAK_THRESH}
}

