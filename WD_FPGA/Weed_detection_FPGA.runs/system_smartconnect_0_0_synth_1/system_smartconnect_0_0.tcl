# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z020clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.cache/wt [current_project]
set_property parent.project_path D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:zybo-z7-20:part0:1.0 [current_project]
set_property ip_repo_paths d:/Xilinx/Library [current_project]
set_property ip_output_repo d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0.xci
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_20/bd_919a_s00a2s_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_26/bd_919a_m00s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_33/bd_919a_m01s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_40/bd_919a_m02s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_47/bd_919a_m03s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_54/bd_919a_m04s2a_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_55/bd_919a_m04arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_56/bd_919a_m04rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_57/bd_919a_m04awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_58/bd_919a_m04wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_59/bd_919a_m04bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_48/bd_919a_m03arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_49/bd_919a_m03rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_50/bd_919a_m03awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_51/bd_919a_m03wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_52/bd_919a_m03bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_41/bd_919a_m02arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_42/bd_919a_m02rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_43/bd_919a_m02awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_44/bd_919a_m02wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_45/bd_919a_m02bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_34/bd_919a_m01arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_35/bd_919a_m01rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_36/bd_919a_m01awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_37/bd_919a_m01wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_38/bd_919a_m01bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_27/bd_919a_m00arn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_28/bd_919a_m00rn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_29/bd_919a_m00awn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_30/bd_919a_m00wn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_31/bd_919a_m00bn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_21/bd_919a_sarn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_22/bd_919a_srn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_23/bd_919a_sawn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_24/bd_919a_swn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_25/bd_919a_sbn_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_2/bd_919a_arinsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_3/bd_919a_rinsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_4/bd_919a_awinsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_5/bd_919a_winsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_6/bd_919a_binsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_7/bd_919a_aroutsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_8/bd_919a_routsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_9/bd_919a_awoutsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_10/bd_919a_woutsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_11/bd_919a_boutsw_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_12/bd_919a_arni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_13/bd_919a_rni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_14/bd_919a_awni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_15/bd_919a_wni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_16/bd_919a_bni_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/bd_919a_psr_aclk_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/bd_0/ip/ip_1/bd_919a_psr_aclk_0.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.runs/system_smartconnect_0_0_synth_1 -new_name system_smartconnect_0_0 -ip [get_ips system_smartconnect_0_0]]

if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

synth_design -top system_smartconnect_0_0 -part xc7z020clg400-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix system_smartconnect_0_0_ system_smartconnect_0_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_smartconnect_0_0_stub.v
 lappend ipCachedFiles system_smartconnect_0_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_smartconnect_0_0_stub.vhdl
 lappend ipCachedFiles system_smartconnect_0_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_smartconnect_0_0_sim_netlist.v
 lappend ipCachedFiles system_smartconnect_0_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_smartconnect_0_0_sim_netlist.vhdl
 lappend ipCachedFiles system_smartconnect_0_0_sim_netlist.vhdl
set TIME_taken [expr [clock seconds] - $TIME_start]

 config_ip_cache -add -dcp system_smartconnect_0_0.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips system_smartconnect_0_0]
}

rename_ref -prefix_all system_smartconnect_0_0_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef system_smartconnect_0_0.dcp
create_report "system_smartconnect_0_0_synth_1_synth_report_utilization_0" "report_utilization -file system_smartconnect_0_0_utilization_synth.rpt -pb system_smartconnect_0_0_utilization_synth.pb"

if { [catch {
  file copy -force D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.runs/system_smartconnect_0_0_synth_1/system_smartconnect_0_0.dcp D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.runs/system_smartconnect_0_0_synth_1/system_smartconnect_0_0.dcp D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0.dcp
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.runs/system_smartconnect_0_0_synth_1/system_smartconnect_0_0_stub.v D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.runs/system_smartconnect_0_0_synth_1/system_smartconnect_0_0_stub.vhdl D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.runs/system_smartconnect_0_0_synth_1/system_smartconnect_0_0_sim_netlist.v D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.runs/system_smartconnect_0_0_synth_1/system_smartconnect_0_0_sim_netlist.vhdl D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.ip_user_files/ip/system_smartconnect_0_0]} {
  catch { 
    file copy -force D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_stub.v D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.ip_user_files/ip/system_smartconnect_0_0
  }
}

if {[file isdir D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.ip_user_files/ip/system_smartconnect_0_0]} {
  catch { 
    file copy -force D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.srcs/sources_1/bd/system/ip/system_smartconnect_0_0/system_smartconnect_0_0_stub.vhdl D:/GitHub/Weed_Detection/WD_FPGA/Weed_detection_FPGA.ip_user_files/ip/system_smartconnect_0_0
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
