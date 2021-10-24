debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
verdiWindowResize -win $_Verdi_1 -10 "19" "1920" "987"
srcTBInvokeSim
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_get_ins"
verdiWindowBeWindow -win $_nSchema_3
schSelect -win $_nSchema3 -inst "cpu"
schPushViewIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "CPU\(@1\):FSM0:109:184:FSM"
schPushViewIn -win $_nSchema3
fsmSetCurrentWindow -win $_nState4
fsmResizeWindow 0 28 1093 305 -win $_nState4
fsmResizeWindow 0 28 1093 305 -win $_nState4
fsmResizeWindow 0 28 1093 305 -win $_nState4
verdiDockWidgetMaximize -dock windowDock_nState_4
fsmResizeWindow 0 28 1920 829 -win $_nState4
fsmFit -win $_nState4
fsmZoom 455 864 477 1130 -win $_nState4
fsmFit -win $_nState4
fsmCloseWindow -win $_nState4
schCloseWindow -win $_nSchema3
srcSignalView -on
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.EA"
srcSignalViewSelect "tb_get_ins.cpu.EA" "tb_get_ins.cpu.clk" \
           "tb_get_ins.cpu.reset" "tb_get_ins.cpu.interupt\[1:0\]" \
           "tb_get_ins.cpu.timing\[1:0\]" "tb_get_ins.cpu.PSEN" \
           "tb_get_ins.cpu.clk_1M" "tb_get_ins.cpu.clk_6M" \
           "tb_get_ins.cpu.read_en" "tb_get_ins.cpu.write_en" \
           "tb_get_ins.cpu.addr_bus\[15:0\]" "tb_get_ins.cpu.data_bus\[7:0\]" \
           "tb_get_ins.cpu.data_in\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt_minus1\[2:0\]" \
           "tb_get_ins.cpu.program_counter_plus1\[15:0\]" \
           "tb_get_ins.cpu.get_ins_done" "tb_get_ins.cpu.get_ins_done_nxt" \
           "tb_get_ins.cpu.read_en_nxt" "tb_get_ins.cpu.rst_n" \
           "tb_get_ins.cpu.addr_bus_nxt\[15:0\]" \
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
           "tb_get_ins.cpu.read_en" "tb_get_ins.cpu.write_en" \
           "tb_get_ins.cpu.addr_bus\[15:0\]" "tb_get_ins.cpu.data_bus\[7:0\]" \
           "tb_get_ins.cpu.data_in\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt_minus1\[2:0\]" \
           "tb_get_ins.cpu.program_counter_plus1\[15:0\]" \
           "tb_get_ins.cpu.get_ins_done" "tb_get_ins.cpu.get_ins_done_nxt" \
           "tb_get_ins.cpu.read_en_nxt" "tb_get_ins.cpu.rst_n" \
           "tb_get_ins.cpu.addr_bus_nxt\[15:0\]" \
           "tb_get_ins.cpu.cnt_rst\[3:0\]" "tb_get_ins.cpu.data_out\[7:0\]" \
           "tb_get_ins.cpu.ins_register\[7:0\]" \
           "tb_get_ins.cpu.ins_register_nxt\[7:0\]" \
           "tb_get_ins.cpu.nop_cnt\[2:0\]" "tb_get_ins.cpu.nop_cnt_nxt\[2:0\]" \
           "tb_get_ins.cpu.program_counter\[15:0\]" \
           "tb_get_ins.cpu.program_counter_nxt\[15:0\]" \
           "tb_get_ins.cpu.status\[7:0\]" "tb_get_ins.cpu.status_nxt\[7:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {100ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_5
wvSetCursor -win $_nWave5 44921.341816 -snap {("G1" 29)}
wvSetMarker -win $_nWave5 49000.000000
wvSelectSignal -win $_nWave5 {( "G1" 29 )} 
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
