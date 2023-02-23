
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BAI_321_DAHOP2_4KENH_1BIT_2O -dir "C:/Users/TOSHIBA/Documents/TT_Xilinx/TTTKVMS_CHIEU_T5_NHOM_2/BAI_321_DAHOP2_4KENH_1BIT_2O/planAhead_run_1" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "DAHOP2_4KENH_1BIT_2O.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {DAHOP_4KENH_1BIT_SELECT.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {DAHOP_4KENH_1BIT_CONDITIONAL.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {DAHOP2_4KENH_1BIT_2O.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top DAHOP2_4KENH_1BIT_2O $srcset
add_files [list {DAHOP2_4KENH_1BIT_2O.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
