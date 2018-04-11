# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {HDL-1065} -limit 10000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/alex/vivado/ip_repo/edit_QAM_Modulator_v0_1.cache/wt [current_project]
set_property parent.project_path /home/alex/vivado/ip_repo/edit_QAM_Modulator_v0_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zedboard:part0:1.0 [current_project]
set_property ip_repo_paths {
  /home/alex/vivado/ip_repo/Cyclic_Prefix_0.1
  /home/alex/vivado/ip_repo/QAM_Modulator_0.1
  GitHub/parametric_qam/ip_repo/qam_mod_1.0
} [current_project]
set_property ip_output_repo /home/alex/vivado/ip_repo/edit_QAM_Modulator_v0_1.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  /home/alex/vivado/ip_repo/edit_QAM_Modulator_v0_1.srcs/sources_1/new/qam_4.v
  /home/alex/vivado/ip_repo/QAM_Modulator_0.1/hdl/QAM_2.v
  /home/alex/vivado/ip_repo/QAM_Modulator_0.1/hdl/QAM_Top.v
  /home/alex/vivado/ip_repo/QAM_Modulator_0.1/hdl/QAM_Modulator_v0_1_S00_AXI.v
  /home/alex/vivado/ip_repo/QAM_Modulator_0.1/hdl/QAM_Modulator_v0_1_S00_AXIS.v
  /home/alex/vivado/ip_repo/QAM_Modulator_0.1/hdl/QAM_Modulator_v0_1_M00_AXIS.v
  /home/alex/vivado/ip_repo/QAM_Modulator_0.1/hdl/QAM_Modulator_v0_1.v
}
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}

synth_design -top QAM_Modulator_v0_1 -part xc7z020clg484-1


write_checkpoint -force -noxdef QAM_Modulator_v0_1.dcp

catch { report_utilization -file QAM_Modulator_v0_1_utilization_synth.rpt -pb QAM_Modulator_v0_1_utilization_synth.pb }
