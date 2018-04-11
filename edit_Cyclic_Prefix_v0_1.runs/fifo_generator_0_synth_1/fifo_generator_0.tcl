# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -msgmgr_mode ooc_run
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.cache/wt [current_project]
set_property parent.project_path /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zedboard:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/alex/vivado/ip_repo/Cyclic_Prefix_0.1
  /home/alex/vivado/ip_repo/QAM_Modulator_0.1
  GitHub/parametric_qam/ip_repo/qam_mod_1.0
} [current_project]
set_property ip_output_repo /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_ip -quiet /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci
set_property is_locked true [get_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

set cached_ip [config_ip_cache -export -no_bom -use_project_ipc -dir /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1 -new_name fifo_generator_0 -ip [get_ips fifo_generator_0]]

if { $cached_ip eq {} } {

synth_design -top fifo_generator_0 -part xc7z020clg484-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
catch {
 write_checkpoint -force -noxdef -rename_prefix fifo_generator_0_ fifo_generator_0.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_stub.v
 lappend ipCachedFiles fifo_generator_0_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_stub.vhdl
 lappend ipCachedFiles fifo_generator_0_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
 lappend ipCachedFiles fifo_generator_0_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.vhdl
 lappend ipCachedFiles fifo_generator_0_sim_netlist.vhdl

 config_ip_cache -add -dcp fifo_generator_0.dcp -move_files $ipCachedFiles -use_project_ipc -ip [get_ips fifo_generator_0]
}

rename_ref -prefix_all fifo_generator_0_

write_checkpoint -force -noxdef fifo_generator_0.dcp

catch { report_utilization -file fifo_generator_0_utilization_synth.rpt -pb fifo_generator_0_utilization_synth.pb }

if { [catch {
  write_verilog -force -mode synth_stub /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


}; # end if cached_ip 

add_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_stub.v -of_objects [get_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci]

add_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_stub.vhdl -of_objects [get_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci]

add_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_sim_netlist.v -of_objects [get_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci]

add_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_sim_netlist.vhdl -of_objects [get_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci]

add_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0.dcp -of_objects [get_files /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.srcs/sources_1/ip/fifo_generator_0/fifo_generator_0.xci]

if {[file isdir /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.ip_user_files/ip/fifo_generator_0]} {
  catch { 
    file copy -force /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_sim_netlist.v /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.ip_user_files/ip/fifo_generator_0
  }
}

if {[file isdir /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.ip_user_files/ip/fifo_generator_0]} {
  catch { 
    file copy -force /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_sim_netlist.vhdl /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.ip_user_files/ip/fifo_generator_0
  }
}

if {[file isdir /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.ip_user_files/ip/fifo_generator_0]} {
  catch { 
    file copy -force /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_stub.v /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.ip_user_files/ip/fifo_generator_0
  }
}

if {[file isdir /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.ip_user_files/ip/fifo_generator_0]} {
  catch { 
    file copy -force /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.runs/fifo_generator_0_synth_1/fifo_generator_0_stub.vhdl /home/alex/vivado/ip_repo/edit_Cyclic_Prefix_v0_1.ip_user_files/ip/fifo_generator_0
  }
}
