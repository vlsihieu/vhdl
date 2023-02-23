
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BAI_303_GIAIMA2_24H_2E_IF_CASE -dir "C:/Users/TOSHIBA/Documents/TT_Xilinx/TTTKVMS_CHIEU_T5_NHOM_2/BAI_303_GIAIMA2_24H_2E_IF_CASE/planAhead_run_1" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "GIAIMA2_24H_2E_IF_CASE.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {GIAIMA_24HE_IF.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {GIAIMA_24HE_CASE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {GIAIMA2_24H_2E_IF_CASE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top GIAIMA2_24H_2E_IF_CASE $srcset
add_files [list {GIAIMA2_24H_2E_IF_CASE.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
