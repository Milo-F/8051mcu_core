debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalView -on
srcSignalViewSelect "tb_get_ins.cpu.status\[6:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.ram_data_register\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.read_en"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.write_en"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.addr_bus\[15:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.data_bus\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {200ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvZoom -win $_nWave3 41041.269841 192060.317460
wvSetCursor -win $_nWave3 50749.637188 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 55000.000000
wvZoom -win $_nWave3 51109.206349 152987.135299
wvZoom -win $_nWave3 42871.533429 109577.320241
wvSetCursor -win $_nWave3 56953.866201 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 59000.000000
wvSetCursor -win $_nWave3 60871.507648 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 65000.000000
wvSetCursor -win $_nWave3 69236.201550 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 71000.000000
wvSetCursor -win $_nWave3 70983.257872 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 75000.000000
wvSetCursor -win $_nWave3 72995.019696 -snap {("G1" 2)}
srcActiveTrace "tb_get_ins.cpu.ram_data_register\[7:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 59000 -TraceValue 00011011
srcSignalView -on
srcSignalView -off
srcSignalView -on
nsMsgSwitchTab -tab trace
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.data_in\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBSimReset
srcTBRunSim -opt {200ns}
wvZoom -win $_nWave3 81943.396226 185121.293801
wvZoom -win $_nWave3 103913.891936 172050.239391
wvSetCursor -win $_nWave3 111168.300897 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 115000.000000
wvSetCursor -win $_nWave3 131186.796510 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 135000.000000
wvSetCursor -win $_nWave3 151113.464162 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 155000.000000
wvSetCursor -win $_nWave3 132931.527779 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 135043.570895 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 132839.699818 -snap {("G1" 3)}
wvSetMarker -win $_nWave3 135000.000000
wvSetCursor -win $_nWave3 147073.033855 -snap {("G1" 3)}
wvSetMarker -win $_nWave3 149000.000000
wvSetCursor -win $_nWave3 152950.023393 -snap {("G1" 3)}
wvSetMarker -win $_nWave3 155000.000000
wvSetCursor -win $_nWave3 147164.861816 -snap {("G1" 3)}
wvSetMarker -win $_nWave3 149000.000000
wvSetCursor -win $_nWave3 153133.679316 -snap {("G1" 3)}
wvSetMarker -win $_nWave3 155000.000000
nsMsgSwitchTab -tab general
debExit
