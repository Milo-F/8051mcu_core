debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
verdiWindowPreviousLayout -win $_Verdi_1
wvCreateWindow
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.status\[6:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.psw\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {100ns}
wvZoom -win $_nWave3 54803.977273 66998.579545
wvSetCursor -win $_nWave3 57021.177686 -snap {("G1" 1)}
wvSetMarker -win $_nWave3 61000.000000
wvZoomAll -win $_nWave3
srcSignalViewSelect "tb_get_ins.instruction\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {100ns}
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
wvSelectSignal -win $_nWave3 {( "G1" 2 )} 
srcTBRebuild -fromCmd "make com" -reloadKDB -restartSim -simOpt "-a sim.log "
wvSaveSignal -win $_nWave3 "/home/milo/ICCodes/mcu51/rebuild.rc"
wvCreateWindow
wvRestoreSignal -win $_nWave4 "./rebuild.rc" -overWriteAutoAlias on
srcTBRunSim -opt {100ns}
wvSelectSignal -win $_nWave4 {( "G1" 2 )} 
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalView -on
srcHBSelect "tb_get_ins.cpu.pro" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu.pro" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.pro.pro_ans\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {100ns}
srcHBSelect "tb_get_ins.cpu.pro" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu.pro" -delim "."
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.b_nxt\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.b\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {100ns}
srcTBRunSim -opt {50ns}
wvZoom -win $_nWave4 189303.267045 302282.670455
srcHBSelect "tb_get_ins.cpu.pro" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu.pro" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "ans" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {50ns}
srcHBSelect "tb_get_ins.cpu.pro" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu.pro" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "pro_ans" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "alu_ans" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {50ns}
srcTBRebuild -fromCmd "make com" -reloadKDB -restartSim -simOpt "-a sim.log "
wvSaveSignal -win $_nWave4 "/home/milo/ICCodes/mcu51/rebuild.rc"
wvCreateWindow
wvRestoreSignal -win $_nWave5 "./rebuild.rc" -overWriteAutoAlias on
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
wvScrollUp -win $_nWave5 1
wvSelectSignal -win $_nWave5 {( "G1" 2 )} 
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_5
wvSetCursor -win $_nWave5 97242.436631 -snap {("G1" 1)}
wvSetMarker -win $_nWave5 101000.000000
wvZoom -win $_nWave5 66769.010630 110497.138185
wvSetCursor -win $_nWave5 98984.090701 -snap {("G1" 9)}
wvSetCursor -win $_nWave5 97053.331185 -snap {("G1" 9)}
wvSetCursor -win $_nWave5 98876.826283 -snap {("G1" 9)}
wvSelectSignal -win $_nWave5 {( "G1" 5 )} 
wvSelectSignal -win $_nWave5 {( "G1" 8 )} 
wvSelectSignal -win $_nWave5 {( "G1" 7 )} 
wvSelectSignal -win $_nWave5 {( "G1" 4 )} 
wvSelectSignal -win $_nWave5 {( "G1" 5 )} 
srcTBRebuild -fromCmd "make com" -reloadKDB -restartSim -simOpt "-a sim.log "
wvSaveSignal -win $_nWave5 "/home/milo/ICCodes/mcu51/rebuild.rc"
srcSignalView -on
srcSignalView -off
srcSignalView -on
wvCreateWindow
wvRestoreSignal -win $_nWave6 "./rebuild.rc" -overWriteAutoAlias on
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_6
wvZoom -win $_nWave6 64539.247751 104922.730989
wvSetCursor -win $_nWave6 93068.544168 -snap {("G1" 1)}
wvSetMarker -win $_nWave6 95000.000000
wvSelectSignal -win $_nWave6 {( "G1" 7 )} 
wvSelectSignal -win $_nWave6 {( "G1" 5 )} 
wvSelectSignal -win $_nWave6 {( "G1" 7 )} 
wvSelectSignal -win $_nWave6 {( "G1" 5 )} 
wvSetCursor -win $_nWave6 77053.834953 -snap {("G1" 1)}
wvSetMarker -win $_nWave6 79000.000000
wvSetCursor -win $_nWave6 75204.713889 -snap {("G1" 1)}
wvSetCursor -win $_nWave6 76921.754877 -snap {("G1" 1)}
wvSetCursor -win $_nWave6 79101.076131 -snap {("G1" 1)}
wvSetCursor -win $_nWave6 76987.794915 -snap {("G1" 1)}
wvSetMarker -win $_nWave6 79000.000000
srcSignalView -on
srcSignalView -off
srcSignalView -on
verdiDockWidgetRestore -dock windowDock_nWave_6
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
nsMsgSwitchTab -tab cmpl
nsMsgSwitchTab -tab trace
nsMsgSwitchTab -tab search
nsMsgSwitchTab -tab general
verdiDockWidgetSetCurTab -dock windowDock_VIA_InteractiveDebug_2
verdiDockWidgetSetCurTab -dock widgetDock_<Message>
verdiDockWidgetSetCurTab -dock windowDock_nWave_6
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_6
wvSelectSignal -win $_nWave6 {( "G1" 7 )} 
wvSelectSignal -win $_nWave6 {( "G1" 7 )} 
wvSetPosition -win $_nWave6 {("G1" 7)}
wvExpandBus -win $_nWave6 {("G1" 7)}
wvSetPosition -win $_nWave6 {("G1" 17)}
wvSelectSignal -win $_nWave6 {( "G1" 7 )} 
wvSetPosition -win $_nWave6 {("G1" 7)}
wvCollapseBus -win $_nWave6 {("G1" 7)}
wvSetPosition -win $_nWave6 {("G1" 7)}
wvSetPosition -win $_nWave6 {("G1" 9)}
wvSetCursor -win $_nWave6 76987.794915 -snap {("G1" 7)}
srcActiveTrace "tb_get_ins.cpu.pro.ans\[7:0\]" -win $_nTrace1 -TraceByDConWave \
           -TraceTime 59000 -TraceValue 00000000
srcSignalView -on
srcSignalView -off
srcSignalView -on
nsMsgSwitchTab -tab trace
srcHBSelect "tb_get_ins.cpu.pro" -win $_nTrace1
wvSelectSignal -win $_nWave6 {( "G1" 4 )} 
wvSetCursor -win $_nWave6 66639.313328 -snap {("G1" 4)}
srcActiveTrace "tb_get_ins.cpu.pro.pro_ans\[7:0\]" -win $_nTrace1 \
           -TraceByDConWave -TraceTime 0 -TraceValue 00000000
wvSetCursor -win $_nWave6 10466.993509 -snap {("G1" 4)}
wvSelectSignal -win $_nWave6 {( "G1" 4 )} 
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
wvCut -win $_nWave6
wvSetPosition -win $_nWave6 {("G2" 0)}
wvSetPosition -win $_nWave6 {("G1" 8)}
srcSignalViewSelect "tb_get_ins.cpu.pro_ans\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {50ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 185008.896905 -snap {("G1" 0)}
wvSetCursor -win $_nWave6 185086.718751 -snap {("G1" 1)}
wvSetMarker -win $_nWave6 187000.000000
srcTBSimReset
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 92989.370401 -snap {("G1" 9)}
srcSignalView -on
srcSignalView -off
srcSignalView -on
verdiDockWidgetRestore -dock windowDock_nWave_6
srcHBSelect "tb_get_ins.cpu.pro.alu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu.pro.alu" -delim "."
srcSignalViewSelect "tb_get_ins.cpu.pro.alu.alu_op\[3:0\]"
srcSignalViewSelect "tb_get_ins.cpu.pro.alu.bit_en"
srcSignalViewSelect "tb_get_ins.cpu.pro.alu.bit_en" \
           "tb_get_ins.cpu.pro.alu.a_bit_location\[2:0\]" \
           "tb_get_ins.cpu.pro.alu.a_data\[7:0\]" \
           "tb_get_ins.cpu.pro.alu.alu_op\[3:0\]" \
           "tb_get_ins.cpu.pro.alu.b_bit_location\[2:0\]" \
           "tb_get_ins.cpu.pro.alu.b_data\[7:0\]" \
           "tb_get_ins.cpu.pro.alu.psw_in\[7:0\]" \
           "tb_get_ins.cpu.pro.alu.ans\[7:0\]" \
           "tb_get_ins.cpu.pro.alu.psw_out\[7:0\]"
srcSignalViewSelect "tb_get_ins.cpu.pro.alu.bit_en" \
           "tb_get_ins.cpu.pro.alu.a_bit_location\[2:0\]" \
           "tb_get_ins.cpu.pro.alu.a_data\[7:0\]" \
           "tb_get_ins.cpu.pro.alu.alu_op\[3:0\]" \
           "tb_get_ins.cpu.pro.alu.b_bit_location\[2:0\]" \
           "tb_get_ins.cpu.pro.alu.b_data\[7:0\]" \
           "tb_get_ins.cpu.pro.alu.psw_in\[7:0\]" \
           "tb_get_ins.cpu.pro.alu.ans\[7:0\]" \
           "tb_get_ins.cpu.pro.alu.psw_out\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
wvSetPosition -win $_nWave6 {("G1" 14)}
wvSetPosition -win $_nWave6 {("G1" 18)}
wvSetPosition -win $_nWave6 {("G2" 0)}
wvMoveSelected -win $_nWave6
wvSetPosition -win $_nWave6 {("G2" 9)}
wvSetPosition -win $_nWave6 {("G2" 9)}
srcTBRunSim -opt {50ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_6
wvSetCursor -win $_nWave6 128968.417083 -snap {("G1" 1)}
wvSetMarker -win $_nWave6 131000.000000
wvZoom -win $_nWave6 100462.005468 141637.933356
wvSelectSignal -win $_nWave6 {( "G2" 9 )} 
wvSelectSignal -win $_nWave6 {( "G2" 3 )} 
wvSelectSignal -win $_nWave6 {( "G2" 6 )} 
wvSelectSignal -win $_nWave6 {( "G2" 2 )} 
wvSelectSignal -win $_nWave6 {( "G2" 5 )} 
wvSelectSignal -win $_nWave6 {( "G2" 6 )} 
wvSelectSignal -win $_nWave6 {( "G2" 8 )} 
wvSelectSignal -win $_nWave6 {( "G2" 4 )} 
srcTBRebuild -fromCmd "make com" -reloadKDB -restartSim -simOpt "-a sim.log "
wvSaveSignal -win $_nWave6 "/home/milo/ICCodes/mcu51/rebuild.rc"
srcSignalView -on
srcSignalView -off
srcSignalView -on
nsMsgSwitchTab -tab general
wvCreateWindow
wvRestoreSignal -win $_nWave7 "./rebuild.rc" -overWriteAutoAlias on
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_7
wvZoom -win $_nWave7 77050.695012 98852.820932
wvSetCursor -win $_nWave7 93076.951105 -snap {("G1" 1)}
wvSetMarker -win $_nWave7 95000.000000
wvSelectSignal -win $_nWave7 {( "G1" 2 )} 
srcTBRebuild -fromCmd "make com" -reloadKDB -restartSim -simOpt "-a sim.log "
wvSaveSignal -win $_nWave7 "/home/milo/ICCodes/mcu51/rebuild.rc"
srcSignalView -on
srcSignalView -off
srcSignalView -on
wvCreateWindow
wvRestoreSignal -win $_nWave8 "./rebuild.rc" -overWriteAutoAlias on
srcTBRunSim -opt {50ns}
srcTBRunSim -opt {50ns}
wvSelectSignal -win $_nWave8 {( "G1" 2 )} 
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_8
wvZoom -win $_nWave8 79197.874080 100834.832379
wvSetMarker -win $_nWave8 93000.000000
wvSetCursor -win $_nWave8 92979.714240 -snap {("G1" 1)}
wvSetMarker -win $_nWave8 95000.000000
wvSetCursor -win $_nWave8 98977.203090 -snap {("G1" 2)}
wvSetMarker -win $_nWave8 93000.000000
wvSetCursor -win $_nWave8 95014.260605 -snap {("G1" 1)}
wvSelectSignal -win $_nWave8 {( "G1" 5 )} 
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
