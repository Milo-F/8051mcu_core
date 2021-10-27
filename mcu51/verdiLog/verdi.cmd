debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
srcSignalView -on
srcSignalViewSelect "tb_get_ins.clk_1M"
srcSignalViewSelect "tb_get_ins.clk_1M" "tb_get_ins.clk_6M" \
           "tb_get_ins.memory_select" "tb_get_ins.psen" "tb_get_ins.read_en" \
           "tb_get_ins.write_en" "tb_get_ins.addr_bus\[15:0\]" \
           "tb_get_ins.data_bus\[7:0\]" "tb_get_ins.data_out\[7:0\]" \
           "tb_get_ins.EA" "tb_get_ins.clk" "tb_get_ins.rst_n" \
           "tb_get_ins.instruction\[7:0\]" "tb_get_ins.interupt\[1:0\]" \
           "tb_get_ins.timer\[1:0\]"
srcSignalViewSelect "tb_get_ins.instruction\[7:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 0)}
srcSignalViewSelect "tb_get_ins.clk_1M"
srcSignalViewSelect "tb_get_ins.clk_1M" "tb_get_ins.clk_6M" \
           "tb_get_ins.memory_select" "tb_get_ins.psen" "tb_get_ins.read_en" \
           "tb_get_ins.write_en" "tb_get_ins.addr_bus\[15:0\]" \
           "tb_get_ins.data_bus\[7:0\]" "tb_get_ins.data_out\[7:0\]" \
           "tb_get_ins.EA" "tb_get_ins.clk" "tb_get_ins.rst_n" \
           "tb_get_ins.instruction\[7:0\]" "tb_get_ins.interupt\[1:0\]" \
           "tb_get_ins.timer\[1:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.status\[6:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {200ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSelectGroup -win $_nWave3 {G2}
wvSelectSignal -win $_nWave3 {( "G1" 9 )} 
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
srcTBRebuild -fromCmd "make com" -reloadKDB -restartSim -simOpt "-a sim.log "
wvSaveSignal -win $_nWave3 "/home/milo/ICCodes/mcu51/rebuild.rc"
srcSignalView -on
srcSignalView -off
srcSignalView -on
wvCreateWindow
wvRestoreSignal -win $_nWave4 "./rebuild.rc" -overWriteAutoAlias on
srcTBRunSim -opt {200ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_4
wvSelectSignal -win $_nWave4 {( "G1" 9 )} 
wvSetCursor -win $_nWave4 67703.296703 -snap {("G1" 8)}
wvSetCursor -win $_nWave4 68496.075353 -snap {("G1" 8)}
wvSetCursor -win $_nWave4 66910.518053 -snap {("G1" 8)}
wvZoomOut -win $_nWave4
wvZoom -win $_nWave4 62629.513344 78485.086342
wvZoomAll -win $_nWave4
wvZoom -win $_nWave4 59934.065934 196133.437991
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
