debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
srcSignalView -on
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.status\[6:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.program_counter\[15:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {100ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvZoom -win $_nWave3 34533.386967 96043.443282
wvSetCursor -win $_nWave3 45123.211626 -snap {("G1" 1)}
wvSetCursor -win $_nWave3 50863.490414 -snap {("G1" 1)}
wvSetCursor -win $_nWave3 54970.758856 -snap {("G1" 1)}
wvSetCursor -win $_nWave3 51209.886547 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 55000.000000
wvSetCursor -win $_nWave3 57049.135658 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 61000.000000
wvSetCursor -win $_nWave3 63135.810579 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 65000.000000
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
