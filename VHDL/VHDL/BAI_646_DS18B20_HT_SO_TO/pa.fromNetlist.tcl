
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name BAI_646_DS18B20_HT_SO_TO -dir "C:/Users/Admin/Documents/TT-HDL-N7-S2/VHDL/BAI_646_DS18B20_HT_SO_TO/planAhead_run_4" -part xc3s500epq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Admin/Documents/TT-HDL-N7-S2/VHDL/BAI_646_DS18B20_HT_SO_TO/DS_18B20_HT_SO_TO.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Admin/Documents/TT-HDL-N7-S2/VHDL/BAI_646_DS18B20_HT_SO_TO} }
set_property target_constrs_file "C:/Users/Admin/Documents/TT-HDL-N7-S2/VHDL/KIT_XC3S500E_PQ208.ucf" [current_fileset -constrset]
add_files [list {C:/Users/Admin/Documents/TT-HDL-N7-S2/VHDL/KIT_XC3S500E_PQ208.ucf}] -fileset [get_property constrset [current_run]]
link_design
