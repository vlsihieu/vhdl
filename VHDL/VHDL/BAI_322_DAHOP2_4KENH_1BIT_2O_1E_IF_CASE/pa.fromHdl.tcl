
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BAI_322_DAHOP2_4KENH_1BIT_2O_1E_IF_CASE -dir "C:/Users/TOSHIBA/Documents/TT_Xilinx/TTTKVMS_CHIEU_T5_NHOM_2/BAI_322_DAHOP2_4KENH_1BIT_2O_1E_IF_CASE/planAhead_run_2" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "DAHOP2_4KENH_1BIT_2O_1E_IF_CASE.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {DAHOP_4KENH_1BIT_E_IF.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {DAHOP_4KENH_1BIT_E_CASE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {DAHOP2_4KENH_1BIT_2O_1E_IF_CASE.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top DAHOP2_4KENH_1BIT_2O_1E_IF_CASE $srcset
add_files [list {DAHOP2_4KENH_1BIT_2O_1E_IF_CASE.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
