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
create_project -in_memory -part xc7s15ftgb196-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir K:/FPGA/camera/Camera_Demo/Camera_Demo.cache/wt [current_project]
set_property parent.project_path K:/FPGA/camera/Camera_Demo/Camera_Demo.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {
  k:/FPGA/camera/Camera_Demo/IP_Core
  k:/FPGA/LED-IP/Driver-SK6805-IP/Driver_SK6805
  k:/FPGA/LED-IP/Driver-SK6805-IP
} [current_project]
update_ip_catalog
set_property ip_output_repo k:/FPGA/camera/Camera_Demo/Camera_Demo.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files K:/FPGA/camera/Camera_Demo/OV5647/OV5647.coe
read_verilog -library xil_defaultlib {
  K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/new/Driver_Bayer_To_RGB.v
  K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/new/Driver_Csi_To_Dvp.v
  K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/new/Driver_IIC.v
  K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/new/Driver_MIPI.v
  K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/new/OV5647_Init.v
  K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/new/RGB.v
  K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/new/Trigger_Generator.v
  K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/new/Camera_Demo.v
}
read_ip -quiet K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/csi_to_axis_0/csi_to_axis_0.xci
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/csi_to_axis_0/hdl/csi_to_axis.xdc]

read_ip -quiet K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/csi2_d_phy_rx_0/csi2_d_phy_rx_0.xci
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/csi2_d_phy_rx_0/hdl/csi2_d_phy_rx.xdc]

read_ip -quiet K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/rgb2dvi_0/rgb2dvi_0.xci
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/rgb2dvi_0/src/rgb2dvi.xdc]
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/rgb2dvi_0/src/rgb2dvi_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/rgb2dvi_0/src/rgb2dvi_clocks.xdc]

read_ip -quiet K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/AXIS_Data_RAM/AXIS_Data_RAM.xci
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/AXIS_Data_RAM/AXIS_Data_RAM_ooc.xdc]

read_ip -quiet K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/RAM_Line/RAM_Line.xci
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/RAM_Line/RAM_Line_ooc.xdc]

read_ip -quiet K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

read_ip -quiet K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xci
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_board.xdc]
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1.xdc]
set_property used_in_implementation false [get_files -all k:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_ooc.xdc]

read_ip -quiet K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/sources_1/ip/Driver_SK6805_0/Driver_SK6805_0.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/constrs_1/new/system.xdc
set_property used_in_implementation false [get_files K:/FPGA/camera/Camera_Demo/Camera_Demo.srcs/constrs_1/new/system.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top Camera_Demo -part xc7s15ftgb196-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Camera_Demo.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Camera_Demo_utilization_synth.rpt -pb Camera_Demo_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
