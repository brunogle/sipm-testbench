package require fileutil

set project_name [lindex $argv 0]
set project_dir [lindex $argv 1]

file delete -force $project_dir/$project_name.cache $project_dir/$project_name.gen $project_dir/$project_name.hw $project_dir/$project_name.ip_user_files $project_dir/$project_name.runs $project_dir/$project_name.sim $project_dir/$project_name.srcs $project_dir/$project_name.xpr

create_project -part xc7z010clg400-1 $project_name $project_dir

update_ip_catalog


proc wire {name1 name2} {
  set port1 [get_bd_pins $name1]
  set port2 [get_bd_pins $name2]
  if {[llength $port1] == 1 && [llength $port2] == 1} {
    connect_bd_net $port1 $port2
    return
  }
  set port1 [get_bd_intf_pins $name1]
  set port2 [get_bd_intf_pins $name2]
  if {[llength $port1] == 1 && [llength $port2] == 1} {
    connect_bd_intf_net $port1 $port2
    return
  }
  error "** ERROR: can't connect $name1 and $name2"
}

proc cell {cell_vlnv cell_name {cell_props {}} {cell_ports {}}} {
  set cell [create_bd_cell -type ip -vlnv $cell_vlnv $cell_name]
  set prop_list {}
  foreach {prop_name prop_value} [uplevel 1 [list subst $cell_props]] {
    lappend prop_list CONFIG.$prop_name $prop_value
  }
  if {[llength $prop_list] > 1} {
    set_property -dict $prop_list $cell
  }
  foreach {local_name remote_name} [uplevel 1 [list subst $cell_ports]] {
    wire $cell_name/$local_name $remote_name
  }
}

proc module {module_name module_body {module_ports {}}} {
  set instance [current_bd_instance .]
  current_bd_instance [create_bd_cell -type hier $module_name]
  eval $module_body
  current_bd_instance $instance
  foreach {local_name remote_name} [uplevel 1 [list subst $module_ports]] {
    wire $module_name/$local_name $remote_name
  }
}

proc design {design_name design_body} {
  set design [current_bd_design]
  create_bd_design $design_name
  eval $design_body
  validate_bd_design
  save_bd_design
  current_bd_design $design
}

proc container {container_name container_designs {container_ports {}}} {
  set reference [lindex $container_designs 0]
  set container [create_bd_cell -type container -reference $reference $container_name]
  foreach {local_name remote_name} [uplevel 1 [list subst $container_ports]] {
    wire $container_name/$local_name $remote_name
  }
  set list {}
  foreach item $container_designs {
    lappend list $item.bd
  }
  set list [join $list :]
  set_property CONFIG.ENABLE_DFX true $container
  set_property CONFIG.LIST_SYNTH_BD $list $container
  set_property CONFIG.LIST_SIM_BD $list $container
}

proc addr {offset range port master} {
  set object [get_bd_intf_pins $port]
  set segment [get_bd_addr_segs -of_objects $object]
  set config [list Master $master Clk Auto]
  apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config $config $object
  assign_bd_address -offset $offset -range $range $segment
}

create_bd_design system

source fpga_cfg/ports.tcl
source fpga_cfg/block_design.tcl

rename wire {}
rename cell {}
rename module {}
rename design {}
rename container {}
rename addr {}

set system [get_files system.bd]

set_property SYNTH_CHECKPOINT_MODE None $system

generate_target all $system
make_wrapper -files $system -top

foreach ext {srcs gen} {
  set files [fileutil::findByPattern $project_dir/$project_name.$ext system_wrapper.v]
  if {[llength $files] > 0} {
    add_files -norecurse $files
    break
  }
}

set_property TOP system_wrapper [current_fileset]

set files [glob -nocomplain fpga_cfg/*.xdc]
if {[llength $files] > 0} {
  add_files -norecurse -fileset constrs_1 $files
}

set_property VERILOG_DEFINE {TOOL_VIVADO} [current_fileset]

set_property STRATEGY Flow_PerfOptimized_high [get_runs synth_1]
set_property STRATEGY Performance_ExploreWithRemap [get_runs impl_1]

close_project
