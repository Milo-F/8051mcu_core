debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
verdiWindowResize -win $_Verdi_1 "0" "23" "1024" "745"
srcSignalView -on
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.status\[6:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.run_phase\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.psw\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.b\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.acc\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.program_counter\[15:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvZoom -win $_nWave3 99541.162048 144044.931047
wvSetCursor -win $_nWave3 108997.545136 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 111000.000000
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
