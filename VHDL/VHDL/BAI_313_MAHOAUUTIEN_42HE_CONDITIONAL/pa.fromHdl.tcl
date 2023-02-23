
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BAI_313_MAHOAUUTIEN_42HE_CONDITIONAL -dir "C:/Users/TOSHIBA/Documents/TT_Xilinx/TTTKVMS_CHIEU_T5_NHOM_2/BAI_313_MAHOAUUTIEN_42HE_CONDITIONAL/planAhead_run_1" -part xc3s500epq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "MAHOAUUTIEN_42HE_CONDITIONAL.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {MAHOA_42HE_CONDITIONAL.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {MAHOAUUTIEN_42HE_CONDITIONAL.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top MAHOAUUTIEN_42HE_CONDITIONAL $srcset
add_files [list {MAHOAUUTIEN_42HE_CONDITIONAL.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500epq208-5
