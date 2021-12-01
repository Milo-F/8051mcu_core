debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
srcHBSelect "tb_get_ins" -win $_nTrace1
srcTBRunSim -opt {100ns}
schCreateWindow -delim "." -win $_nSchema1 -scope "tb_get_ins"
verdiDockWidgetMaximize -dock windowDock_nSchema_3
schSelect -win $_nSchema3 -inst "cpu"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "insdecoder"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schSetOptions -win $_nSchema3 -detailRTL on
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
verdiWindowBeWindow -win $_nSchema_3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoom {156205} {928721} {182452} {935414} -win $_nSchema3
schFit -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -signal "instruction\[7:0\]" "rom_data_register\[7:0\]"
schDeselectAll -win $_nSchema3
schZoom {160740} {1014123} {185283} {1021623} -win $_nSchema3
schFit -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -inst \
          "InsDecoder\(@1\):Always108#Always0:52:816:EqComp"
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "InsDecoder\(@1\):Always263#Always0:52:816:Mux"
schSelect -win $_nSchema3 -inst "InsDecoder\(@1\):Always263#Always0:52:816:Mux"
schPushViewIn -win $_nSchema3
srcSetScope -win $_nTrace1 "tb_get_ins.cpu.insdecoder" -delim "."
srcSelect -win $_nTrace1 -range {686 698 1 3 1 1}
schSelect -win $_nSchema3 -inst "InsDecoder\(@1\):Always94#Always0:52:816:SigOp"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {275 275 1 24 1 1}
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "InsDecoder\(@1\):Always707#Always0:52:816:Mux"
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -signal "a_data_from\[3:0\]"
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schSelect -win $_nSchema3 -port "addr_register_out\[7:0\]"
schSelect -win $_nSchema3 -signal "addr_register_out\[7:0\]"
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -signal "run_phase_init\[3:0\]"
schSetOptions -win $_nSchema3 -detailRTL off
schSelect -win $_nSchema3 -inst "InsDecoder\(@1\):Always1:818:825:Reg"
schSelect -win $_nSchema3 -inst "InsDecoder\(@1\):Always1:818:825:Reg"
schPushViewIn -win $_nSchema3
srcSelect -win $_nTrace1 -range {818 825 1 3 1 1}
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoom {6740} {3899} {7480} {7243} -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schSelect -win $_nSchema3 -toggle -inst \
          "InsDecoder\(@1\):Always0:52:816:LatchCombo"
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schZoomOut -win $_nSchema3
schPopViewUp -win $_nSchema3
schZoomOut -win $_nSchema3
schSelect -win $_nSchema3 -inst "CPU\(@1\):FSM0:216:496:FSM"
schPushViewIn -win $_nSchema3
fsmSetCurrentWindow -win $_nState4
fsmResizeWindow 0 28 854 254 -win $_nState4
fsmResizeWindow 0 28 854 254 -win $_nState4
fsmResizeWindow 0 28 854 254 -win $_nState4
schSelect -win $_nSchema3 -inst "CPU\(@1\):FSM0:216:496:FSM"
schSelect -win $_nSchema3 -inst "pro"
schPushViewIn -win $_nSchema3
schSetOptions -win $_nSchema3 -detailRTL on
schZoomIn -win $_nSchema3
schSelect -win $_nSchema3 -inst "alu"
schPushViewIn -win $_nSchema3
schZoomIn -win $_nSchema3
schZoomOut -win $_nSchema3
schSelect -win $_nSchema3 -inst "ALU:Always15#Always0:20:58:Div"
schProperties -win $_nSchema3
schFocusConnection -win $_nSchema3
schSelect -win $_nSchema3 -signal "psw_in\[7:0\]"
schSelect -win $_nSchema3 -inst "ALU:Always3#Always0:20:58:Mul"
schSelect -win $_nSchema3 -inst "ALU:Always2#Always0:20:58:Adder"
schCloseWindow -win $_nSchema3
verdiDockWidgetMaximize -dock windowDock_nState_4
fsmResizeWindow 0 28 1536 683 -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomOut -win $_nState4
fsmZoomOut -win $_nState4
fsmZoomOut -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmZoomIn -win $_nState4
fsmSelect -add -state "INS_DECODE" -win $_nState4
fsmSelect -state "GET_INS_INDEX" -win $_nState4
fsmCloseWindow -win $_nState4
debExit
