read_file -format verilog para.vh
set file_list [list]
set fp [open ../filelist.f r]
while {[gets $fp line] != -1} {
    lappend file_list [string range $line 11 [string length [string trim $line ]]]
}
puts $file_list
read_file -format verilog $file_list