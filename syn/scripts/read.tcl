echo "set work directory"
define_design_lib WORK -path $work_path

echo "analyze and elaborate design"
read_file -format verilog para.vh
set file_list [list]
set fp [open ../filelist.f r]
while {[gets $fp line] != -1} {
    lappend file_list [string range $line 11 [string length [string trim $line ]]]
}
puts $file_list
analyze -format verilog $file_list
current_design Mcu
redirect -tee -file $log_path/elaborate.log {elaborate Mcu}
echo "link design"
link
redirect -tee -file $log_path/check_design.log {check_design}