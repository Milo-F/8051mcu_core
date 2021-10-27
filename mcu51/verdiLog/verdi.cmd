debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcHBSelect "ALEGen" -win $_nTrace1
srcTBInvokeSim
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalView -on
srcSignalViewSelect "tb_get_ins.cpu.EA"
srcSignalViewSelect "tb_get_ins.cpu.EA" "tb_get_ins.cpu.clk" \
           "tb_get_ins.cpu.reset" "tb_get_ins.cpu.interupt\[1:0\]" \
           "tb_get_ins.cpu.timer\[1:0\]" "tb_get_ins.cpu.PSEN" \
           "tb_get_ins.cpu.clk_1M" "tb_get_ins.cpu.clk_6M" \
           "tb_get_ins.cpu.memory_select" "tb_get_ins.cpu.read_en" \
           "tb_get_ins.cpu.write_en" "tb_get_ins.cpu.addr_bus\[15:0\]" \
           "tb_get_ins.cpu.data_bus\[7:0\]" \
           "tb_get_ins.cpu.addr_register_out\[7:0\]" \
           "tb_get_ins.cpu.data_from\[2:0\]" "tb_get_ins.cpu.data_in\[7:0\]" \
           "tb_get_ins.cpu.decoder_next_status\[2:0\]" \
           "tb_get_ins.cpu.nop_cnt_minus1\[2:0\]" \
           "tb_get_ins.cpu.program_counter_plus1\[15:0\]" \
           "tb_get_ins.cpu.run_phase_init\[2:0\]" \
           "tb_get_ins.cpu.run_phase_minus1\[2:0\]" \
           "tb_get_ins.cpu.get_ins_done" "tb_get_ins.cpu.get_ins_done_nxt" \
           "tb_get_ins.cpu.memory_select_nxt" "tb_get_ins.cpu.ram_read_done" \
           "tb_get_ins.cpu.ram_read_done_nxt" "tb_get_ins.cpu.ram_write_done" \
           "tb_get_ins.cpu.ram_write_done_nxt" "tb_get_ins.cpu.read_en_nxt" \
           "tb_get_ins.cpu.rom_read_done" "tb_get_ins.cpu.rom_read_done_nxt" \
           "tb_get_ins.cpu.rst_n" "tb_get_ins.cpu.write_en_nxt" \
           "tb_get_ins.cpu.acc\[7:0\]" "tb_get_ins.cpu.addr_bus_nxt\[15:0\]" \
           "tb_get_ins.cpu.b\[7:0\]" "tb_get_ins.cpu.cnt_rst\[3:0\]" \
           "tb_get_ins.cpu.data_out\[7:0\]" \
           "tb_get_ins.cpu.data_out_nxt\[7:0\]" \
           "tb_get_ins.cpu.data_register\[7:0\]" \
           "tb_get_ins.cpu.data_register_nxt\[7:0\]" \
           "tb_get_ins.cpu.ins_register\[7:0\]" \
           "tb_get_ins.cpu.ins_register_nxt\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt\[2:0\]" "tb_get_ins.cpu.nop_cnt_nxt\[2:0\]" \
           "tb_get_ins.cpu.program_counter\[15:0\]" \
           "tb_get_ins.cpu.program_counter_nxt\[15:0\]" \
           "tb_get_ins.cpu.psw\[7:0\]" "tb_get_ins.cpu.run_phase\[2:0\]" \
           "tb_get_ins.cpu.run_phase_nxt\[2:0\]" \
           "tb_get_ins.cpu.status\[6:0\]" "tb_get_ins.cpu.status_nxt\[6:0\]"
srcSignalViewSelect "tb_get_ins.cpu.EA" "tb_get_ins.cpu.clk" \
           "tb_get_ins.cpu.reset" "tb_get_ins.cpu.interupt\[1:0\]" \
           "tb_get_ins.cpu.timer\[1:0\]" "tb_get_ins.cpu.PSEN" \
           "tb_get_ins.cpu.clk_1M" "tb_get_ins.cpu.clk_6M" \
           "tb_get_ins.cpu.memory_select" "tb_get_ins.cpu.read_en" \
           "tb_get_ins.cpu.write_en" "tb_get_ins.cpu.addr_bus\[15:0\]" \
           "tb_get_ins.cpu.data_bus\[7:0\]" \
           "tb_get_ins.cpu.addr_register_out\[7:0\]" \
           "tb_get_ins.cpu.data_from\[2:0\]" "tb_get_ins.cpu.data_in\[7:0\]" \
           "tb_get_ins.cpu.decoder_next_status\[2:0\]" \
           "tb_get_ins.cpu.nop_cnt_minus1\[2:0\]" \
           "tb_get_ins.cpu.program_counter_plus1\[15:0\]" \
           "tb_get_ins.cpu.run_phase_init\[2:0\]" \
           "tb_get_ins.cpu.run_phase_minus1\[2:0\]" \
           "tb_get_ins.cpu.get_ins_done" "tb_get_ins.cpu.get_ins_done_nxt" \
           "tb_get_ins.cpu.memory_select_nxt" "tb_get_ins.cpu.ram_read_done" \
           "tb_get_ins.cpu.ram_read_done_nxt" "tb_get_ins.cpu.ram_write_done" \
           "tb_get_ins.cpu.ram_write_done_nxt" "tb_get_ins.cpu.read_en_nxt" \
           "tb_get_ins.cpu.rom_read_done" "tb_get_ins.cpu.rom_read_done_nxt" \
           "tb_get_ins.cpu.rst_n" "tb_get_ins.cpu.write_en_nxt" \
           "tb_get_ins.cpu.acc\[7:0\]" "tb_get_ins.cpu.addr_bus_nxt\[15:0\]" \
           "tb_get_ins.cpu.b\[7:0\]" "tb_get_ins.cpu.cnt_rst\[3:0\]" \
           "tb_get_ins.cpu.data_out\[7:0\]" \
           "tb_get_ins.cpu.data_out_nxt\[7:0\]" \
           "tb_get_ins.cpu.data_register\[7:0\]" \
           "tb_get_ins.cpu.data_register_nxt\[7:0\]" \
           "tb_get_ins.cpu.ins_register\[7:0\]" \
           "tb_get_ins.cpu.ins_register_nxt\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt\[2:0\]" "tb_get_ins.cpu.nop_cnt_nxt\[2:0\]" \
           "tb_get_ins.cpu.program_counter\[15:0\]" \
           "tb_get_ins.cpu.program_counter_nxt\[15:0\]" \
           "tb_get_ins.cpu.psw\[7:0\]" "tb_get_ins.cpu.run_phase\[2:0\]" \
           "tb_get_ins.cpu.run_phase_nxt\[2:0\]" \
           "tb_get_ins.cpu.status\[6:0\]" "tb_get_ins.cpu.status_nxt\[6:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {150ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvScrollUp -win $_nWave3 26
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 40 )} 
wvSelectSignal -win $_nWave3 {( "G1" 41 )} 
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 1
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollDown -win $_nWave3 0
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvScrollUp -win $_nWave3 1
wvSelectSignal -win $_nWave3 {( "G1" 40 )} 
wvSelectSignal -win $_nWave3 {( "G1" 41 )} 
srcTBRebuild -fromCmd "make com" -reloadKDB -restartSim -simOpt "-a sim.log "
wvSaveSignal -win $_nWave3 "/home/milo/ICCodes/mcu51/rebuild.rc"
srcSignalView -on
srcSignalView -off
srcSignalView -on
wvCreateWindow
wvRestoreSignal -win $_nWave4 "./rebuild.rc" -overWriteAutoAlias on
srcTBRunSim -opt {150ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_4
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 1
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvScrollDown -win $_nWave4 0
wvSelectSignal -win $_nWave4 {( "G1" 42 )} 
wvSetCursor -win $_nWave4 44657.686212 -snap {("G1" 51)}
wvSetMarker -win $_nWave4 49000.000000
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollUp -win $_nWave4 1
wvScrollDown -win $_nWave4 0
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
