debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalView -on
srcSignalViewSelect "tb_get_ins.cpu.interupt\[4:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.int_addr\[15:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.interupt_en"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.ins_register\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.status\[6:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
srcSignalViewSelect "tb_get_ins.cpu.run_phase\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G1" 6 )} 
srcSignalViewSelect "tb_get_ins.cpu.read_en"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.write_en"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSelectSignal -win $_nWave3 {( "G1" 4 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSelectSignal -win $_nWave3 {( "G1" 3 4 )} 
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 8)}
srcSignalViewSelect "tb_get_ins.cpu.program_counter\[15:0\]"
wvSetPosition -win $_nWave3 {("G1" 6)}
srcSignalViewSelect "tb_get_ins.cpu.program_counter\[15:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave3 {("G1" 9)}
srcSignalViewSelect "tb_get_ins.cpu.ram_data_register\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {150ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvZoom -win $_nWave3 42933.224756 104618.892508
wvSetCursor -win $_nWave3 45193.693037 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 47000.000000
wvSetCursor -win $_nWave3 49011.372800 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 53000.000000
wvSetCursor -win $_nWave3 53029.983077 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 55000.000000
wvSetCursor -win $_nWave3 54788.125073 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 59000.000000
wvSetCursor -win $_nWave3 61217.901516 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 63000.000000
wvSetCursor -win $_nWave3 65336.977050 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 69000.000000
wvSetCursor -win $_nWave3 71063.496695 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 73000.000000
wvSetCursor -win $_nWave3 75082.106972 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 79000.000000
wvSetCursor -win $_nWave3 81160.255016 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 85000.000000
wvSetCursor -win $_nWave3 87037.472546 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 89000.000000
wvSetCursor -win $_nWave3 91257.013337 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 95000.000000
wvSetCursor -win $_nWave3 97385.394009 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 99000.000000
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
