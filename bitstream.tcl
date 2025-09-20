set project_name [lindex $argv 0]
set project_dir [lindex $argv 1]

open_project $project_dir/$project_name.xpr

# if {[get_property PROGRESS [get_runs impl_1]] != "100%"} {
#   launch_runs impl_1
#   wait_on_run impl_1
# }

#launch synthesis
reset_run synth_1

launch_runs -jobs 4 synth_1
wait_on_run synth_1

launch_runs -jobs 4 impl_1
wait_on_run impl_1

open_run [get_runs impl_1]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]

write_bitstream -force -file $project_dir/$project_name.bit

close_project
