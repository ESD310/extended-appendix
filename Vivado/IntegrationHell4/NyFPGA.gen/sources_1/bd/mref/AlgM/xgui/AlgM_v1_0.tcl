# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "c" -parent ${Page_0}
  ipgui::add_param $IPINST -name "scalingFactor" -parent ${Page_0}


}

proc update_PARAM_VALUE.c { PARAM_VALUE.c } {
	# Procedure called to update c when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.c { PARAM_VALUE.c } {
	# Procedure called to validate c
	return true
}

proc update_PARAM_VALUE.scalingFactor { PARAM_VALUE.scalingFactor } {
	# Procedure called to update scalingFactor when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.scalingFactor { PARAM_VALUE.scalingFactor } {
	# Procedure called to validate scalingFactor
	return true
}


proc update_MODELPARAM_VALUE.c { MODELPARAM_VALUE.c PARAM_VALUE.c } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.c}] ${MODELPARAM_VALUE.c}
}

proc update_MODELPARAM_VALUE.scalingFactor { MODELPARAM_VALUE.scalingFactor PARAM_VALUE.scalingFactor } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.scalingFactor}] ${MODELPARAM_VALUE.scalingFactor}
}

