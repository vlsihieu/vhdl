loadProjectFile -file "C:\.Xilinx\auto_project.ipf"
setMode -bs
setMode -bs
setMode -bs
setMode -bs
setCable -port auto
Identify 
identifyMPM 
assignFile -p 1 -file "F:/FPGA/VHDL/BAI TAP/DENGIAOTHONG/toplever.bit"
Program -p 1 
Program -p 1 
Program -p 1 
Program -p 1 
setMode -bs
deleteDevice -position 1
setMode -bs
setMode -ss
setMode -sm
setMode -hw140
setMode -spi
setMode -acecf
setMode -acempm
setMode -pff
