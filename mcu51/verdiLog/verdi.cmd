debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
srcHBSelect "tb_get_ins.cpu" -win $_nTrace1
srcSetScope -win $_nTrace1 "tb_get_ins.cpu" -delim "."
srcSignalView -on
srcSignalViewSelect "tb_get_ins.cpu.memory_select"
srcSignalViewSelect "tb_get_ins.cpu.read_en"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.write_en"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.status\[6:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.run_phase_nxt\[2:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.run_phase\[2:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.run_phase_minus1\[2:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.run_phase_init\[2:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.ram_write_done"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.ins_register\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.data_out\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.data_bus\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.clk"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.write_en_nxt"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcSignalViewSelect "tb_get_ins.cpu.rst_n"
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {200ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_3
wvSelectSignal -win $_nWave3 {( "G1" 13 )} 
wvCut -win $_nWave3
wvSetPosition -win $_nWave3 {("G2" 0)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSelectSignal -win $_nWave3 {( "G1" 3 )} 
wvSetCursor -win $_nWave3 71032.967033 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 74521.193093 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 77850.863422 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 80070.643642 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 82924.646782 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 85937.205651 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 89108.320251 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 92279.434851 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 119551.020408 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 122405.023548 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 119551.020408 -snap {("G1" 3)}
wvSetCursor -win $_nWave3 122722.135008 -snap {("G1" 3)}
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
srcTBRebuild -fromCmd "make com" -reloadKDB -restartSim -simOpt "-a sim.log "
wvSaveSignal -win $_nWave4 "/home/milo/ICCodes/mcu51/rebuild.rc"
srcSignalView -on
srcSignalView -off
srcSignalView -on
wvCreateWindow
wvRestoreSignal -win $_nWave5 "./rebuild.rc" -overWriteAutoAlias on
srcTBRunSim -opt {200ns}
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_5
wvSelectSignal -win $_nWave5 {( "G1" 3 )} 
wvSelectSignal -win $_nWave5 {( "G1" 5 )} 
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_get_ins"
verdiWindowBeWindow -win $_nSchema_6
schSelect -win $_nSchema6 -inst "cpu"
schPushViewIn -win $_nSchema6
schZoomIn -win $_nSchema6
schZoomIn -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomIn -win $_nSchema6
schZoomIn -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomIn -win $_nSchema6
schZoomOut -win $_nSchema6
schSelect -win $_nSchema6 -inst "CPU\(@1\):SigOp0:117:117:Combo"
schSelect -win $_nSchema6 -inst "CPU\(@1\):SigOp1:118:118:Combo"
schSelect -win $_nSchema6 -inst "CPU\(@1\):SigOp4:131:131:Combo"
schFit -win $_nSchema6
schSetOptions -win $_nSchema6 -localNetName on
schSelect -win $_nSchema6 -signal "data_in\[7:0\]"
schSelect -win $_nSchema6 -signal "data_bus\[7:0\]"
schSelect -win $_nSchema6 -signal "write_en"
schSelect -win $_nSchema6 -signal "read_en"
schSelect -win $_nSchema6 -inst "CPU\(@1\):SigOp4:131:131:Combo"
schSelect -win $_nSchema6 -signal "run_phase_minus1\[2:0\]"
schSelect -win $_nSchema6 -signal "run_phase\[2:0\]"
schSelect -win $_nSchema6 -inst "CPU\(@1\):Always3:258:299:RegCombo"
schSelect -win $_nSchema6 -signal "program_counter_nxt\[15:0\]"
schSelect -win $_nSchema6 -signal "run_phase_nxt\[2:0\]"
schSelect -win $_nSchema6 -signal "get_ins_done_nxt"
schSelect -win $_nSchema6 -signal "ram_write_done_nxt"
schSelect -win $_nSchema6 -signal "addr_bus_nxt\[15:0\]"
schSelect -win $_nSchema6 -signal "addr_bus_nxt\[15:0\]"
schSelect -win $_nSchema6 -signal "read_en_nxt"
schSelect -win $_nSchema6 -signal "write_en_nxt"
schSelect -win $_nSchema6 -signal "memory_select_nxt"
schSelect -win $_nSchema6 -signal "addr_register_nxt\[7:0\]"
schSelect -win $_nSchema6 -signal "data_register_nxt\[7:0\]"
schSelect -win $_nSchema6 -signal "ins_register_nxt\[7:0\]"
schSelect -win $_nSchema6 -signal "addr_bus\[15:0\]"
schSelect -win $_nSchema6 -signal "read_en"
schSelect -win $_nSchema6 -inst "insdecoder"
schSelect -win $_nSchema6 -inst "insdecoder"
schSelect -win $_nSchema6 -inst "insdecoder"
schPushViewIn -win $_nSchema6
schPopViewUp -win $_nSchema6
schSetOptions -win $_nSchema6 -detailRTL on
schSelect -win $_nSchema6 -inst "CPU\(@1\):Always17#Always1:146:157:Mux"
schZoomIn -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoom {22130} {-7506} {46557} {12036} -win $_nSchema6
schSelect -win $_nSchema6 -inst "CPU\(@1\):Always16#Always1:146:157:Mux"
schSelect -win $_nSchema6 -inst "CPU\(@1\):Always17#Always1:146:157:Mux"
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoomOut -win $_nSchema6
schZoom {68974} {36030} {133532} {94708} -win $_nSchema6
schZoom {102261} {37658} {141637} {90290} -win $_nSchema6
schFit -win $_nSchema6
schCloseWindow -win $_nSchema6
srcSignalView -on
srcSignalView -off
srcSignalView -on
debExit
