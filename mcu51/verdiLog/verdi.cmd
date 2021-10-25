debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
verdiWindowResize -win $_Verdi_1 "438" "113" "1908" "1047"
srcHBSelect "tb_get_ins" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins" -delim "."
srcSignalView -on
srcSignalViewSelect "tb_get_ins.read_en"
srcSignalViewSelect "tb_get_ins.read_en" "tb_get_ins.addr_bus\[7:0\]" \
           "tb_get_ins.data_bus\[7:0\]" "tb_get_ins.data_out\[7:0\]" \
           "tb_get_ins.clk" "tb_get_ins.rst_n" "tb_get_ins.instruction\[7:0\]"
srcSignalViewSelect "tb_get_ins.read_en" "tb_get_ins.addr_bus\[7:0\]" \
           "tb_get_ins.data_bus\[7:0\]" "tb_get_ins.data_out\[7:0\]" \
           "tb_get_ins.clk" "tb_get_ins.rst_n" "tb_get_ins.instruction\[7:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.EA"
srcSignalViewSelect "tb_get_ins.cpu.EA" "tb_get_ins.cpu.clk" \
           "tb_get_ins.cpu.reset" "tb_get_ins.cpu.interupt\[1:0\]" \
           "tb_get_ins.cpu.timing\[1:0\]" "tb_get_ins.cpu.PSEN" \
           "tb_get_ins.cpu.clk_1M" "tb_get_ins.cpu.clk_6M" \
           "tb_get_ins.cpu.memory_select" "tb_get_ins.cpu.read_en" \
           "tb_get_ins.cpu.write_en" "tb_get_ins.cpu.addr_bus\[15:0\]" \
           "tb_get_ins.cpu.data_bus\[7:0\]" "tb_get_ins.cpu.data_in\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt_minus1\[2:0\]" \
           "tb_get_ins.cpu.program_counter_plus1\[15:0\]" \
           "tb_get_ins.cpu.get_ins_done" "tb_get_ins.cpu.get_ins_done_nxt" \
           "tb_get_ins.cpu.memory_select_nxt" "tb_get_ins.cpu.read_en_nxt" \
           "tb_get_ins.cpu.rst_n" "tb_get_ins.cpu.addr_bus_nxt\[15:0\]" \
           "tb_get_ins.cpu.cnt_rst\[3:0\]" "tb_get_ins.cpu.data_out\[7:0\]" \
           "tb_get_ins.cpu.ins_register\[7:0\]" \
           "tb_get_ins.cpu.ins_register_nxt\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt\[2:0\]" "tb_get_ins.cpu.nop_cnt_nxt\[2:0\]" \
           "tb_get_ins.cpu.program_counter\[15:0\]" \
           "tb_get_ins.cpu.program_counter_nxt\[15:0\]" \
           "tb_get_ins.cpu.status\[7:0\]" "tb_get_ins.cpu.status_nxt\[7:0\]"
srcSignalViewSelect "tb_get_ins.cpu.EA" "tb_get_ins.cpu.clk" \
           "tb_get_ins.cpu.reset" "tb_get_ins.cpu.interupt\[1:0\]" \
           "tb_get_ins.cpu.timing\[1:0\]" "tb_get_ins.cpu.PSEN" \
           "tb_get_ins.cpu.clk_1M" "tb_get_ins.cpu.clk_6M" \
           "tb_get_ins.cpu.memory_select" "tb_get_ins.cpu.read_en" \
           "tb_get_ins.cpu.write_en" "tb_get_ins.cpu.addr_bus\[15:0\]" \
           "tb_get_ins.cpu.data_bus\[7:0\]" "tb_get_ins.cpu.data_in\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt_minus1\[2:0\]" \
           "tb_get_ins.cpu.program_counter_plus1\[15:0\]" \
           "tb_get_ins.cpu.get_ins_done" "tb_get_ins.cpu.get_ins_done_nxt" \
           "tb_get_ins.cpu.memory_select_nxt" "tb_get_ins.cpu.read_en_nxt" \
           "tb_get_ins.cpu.rst_n" "tb_get_ins.cpu.addr_bus_nxt\[15:0\]" \
           "tb_get_ins.cpu.cnt_rst\[3:0\]" "tb_get_ins.cpu.data_out\[7:0\]" \
           "tb_get_ins.cpu.ins_register\[7:0\]" \
           "tb_get_ins.cpu.ins_register_nxt\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt\[2:0\]" "tb_get_ins.cpu.nop_cnt_nxt\[2:0\]" \
           "tb_get_ins.cpu.program_counter\[15:0\]" \
           "tb_get_ins.cpu.program_counter_nxt\[15:0\]" \
           "tb_get_ins.cpu.status\[7:0\]" "tb_get_ins.cpu.status_nxt\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
srcTBRunSim -opt {100ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvScrollDown -win $_nWave3 2
wvSelectSignal -win $_nWave3 {( "G1" 38 )} 
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
