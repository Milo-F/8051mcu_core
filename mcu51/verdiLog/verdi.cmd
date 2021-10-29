debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
srcSignalView -on
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.status\[6:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.run_phase\[3:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.program_counter\[15:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.ram_data_register\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.rom_data_register\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.read_en"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.write_en"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.addr_bus\[15:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.data_bus\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {100NS}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvZoom -win $_nWave3 43715.205149 90761.866452
wvSetCursor -win $_nWave3 50982.267876 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 55000.000000
wvSetCursor -win $_nWave3 57038.153483 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 61000.000000
wvSetCursor -win $_nWave3 63094.039089 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 65000.000000
wvSetCursor -win $_nWave3 66916.816878 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 71000.000000
wvSetCursor -win $_nWave3 73124.099624 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 75000.000000
wvSetCursor -win $_nWave3 76909.028128 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 79000.000000
wvSetCursor -win $_nWave3 80921.052342 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 85000.000000
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
