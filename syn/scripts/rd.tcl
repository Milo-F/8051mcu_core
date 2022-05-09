echo "===================set work directory================"
define_design_lib WORK -path $WORK_PATH

echo "===================analyze and elaborate design=================="
read_file -format verilog para.vh
set file_list [list]
set fp [open ../filelist.f r]
while {[gets $fp line] != -1} {
    lappend file_list [string range $line 11 [string length [string trim $line ]]]
}
puts $file_list
analyze -format verilog $file_list
current_design Mcu
redirect -tee -file ${LOG_PATH}/elaborate.log {elaborate Mcu}
echo "link design"
link
check_design > ${LOG_PATH}/check_design.log 