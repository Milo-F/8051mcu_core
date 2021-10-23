debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
verdiWindowResize -win $_Verdi_1 -10 "19" "1920" "987"
srcTBInvokeSim
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
srcTBRunSim -opt {100ns}
wvSetCursor -win $_nWave3 31894.736842 -snap {("G2" 0)}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
