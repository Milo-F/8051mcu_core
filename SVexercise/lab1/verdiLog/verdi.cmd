debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
srcSignalView -on
srcSignalViewSelect "tb1.ch0_margin\[5:0\]"
srcSignalViewSelect "tb1.ch0_ready"
srcSignalViewSelect "tb1.ch0_ready" "tb1.ch0_valid" "tb1.ch1_ready" \
           "tb1.ch1_valid" "tb1.ch2_ready" "tb1.ch2_valid" "tb1.clk" \
           "tb1.mcdt_val" "tb1.rstn" "tb1.ch0_data\[31:0\]" \
           "tb1.ch0_margin\[5:0\]" "tb1.ch1_data\[31:0\]" \
           "tb1.ch1_margin\[5:0\]" "tb1.ch2_data\[31:0\]" \
           "tb1.ch2_margin\[5:0\]" "tb1.mcdt_data\[31:0\]" \
           "tb1.mcdt_id\[1:0\]"
srcSignalViewSelect "tb1.ch0_ready" "tb1.ch0_valid" "tb1.ch1_ready" \
           "tb1.ch1_valid" "tb1.ch2_ready" "tb1.ch2_valid" "tb1.clk" \
           "tb1.mcdt_val" "tb1.rstn" "tb1.ch0_data\[31:0\]" \
           "tb1.ch0_margin\[5:0\]" "tb1.ch1_data\[31:0\]" \
           "tb1.ch1_margin\[5:0\]" "tb1.ch2_data\[31:0\]" \
           "tb1.ch2_margin\[5:0\]" "tb1.mcdt_data\[31:0\]" \
           "tb1.mcdt_id\[1:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
srcTBRunSim -opt {1us}
verdiWindowBeWindow -win $_nWave3
wvResizeWindow -win $_nWave3 -10 20 1275 371
wvResizeWindow -win $_nWave3 -10 19 1920 987
wvSetCursor -win $_nWave3 151963.302752 -snap {("G2" 0)}
wvSelectSignal -win $_nWave3 {( "G1" 11 )} 
wvSetCursor -win $_nWave3 226709.480122 -snap {("G2" 0)}
wvSetCursor -win $_nWave3 191498.470948 -snap {("G1" 17)}
wvSetCursor -win $_nWave3 774642.201835 -snap {("G1" 16)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSelectSignal -win $_nWave3 {( "G1" 12 )} 
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSelectSignal -win $_nWave3 {( "G1" 14 )} 
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSelectSignal -win $_nWave3 {( "G1" 7 )} 
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 0)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 0)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSelectSignal -win $_nWave3 {( "G1" 9 )} 
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 1)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 1)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSelectSignal -win $_nWave3 {( "G1" 9 )} 
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 2)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 2)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSelectSignal -win $_nWave3 {( "G1" 8 )} 
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSelectSignal -win $_nWave3 {( "G1" 17 )} 
wvSetPosition -win $_nWave3 {("G1" 17)}
wvSetPosition -win $_nWave3 {("G1" 16)}
wvSetPosition -win $_nWave3 {("G1" 15)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 3)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 3)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSelectSignal -win $_nWave3 {( "G1" 9 )} 
wvSetCursor -win $_nWave3 54978.593272 -snap {("G2" 0)}
wvSelectSignal -win $_nWave3 {( "G1" 17 )} 
wvSetPosition -win $_nWave3 {("G1" 17)}
wvSetPosition -win $_nWave3 {("G1" 16)}
wvSetPosition -win $_nWave3 {("G1" 15)}
wvSetPosition -win $_nWave3 {("G1" 14)}
wvSetPosition -win $_nWave3 {("G1" 13)}
wvSetPosition -win $_nWave3 {("G1" 12)}
wvSetPosition -win $_nWave3 {("G1" 11)}
wvSetPosition -win $_nWave3 {("G1" 10)}
wvSetPosition -win $_nWave3 {("G1" 9)}
wvSetPosition -win $_nWave3 {("G1" 8)}
wvSetPosition -win $_nWave3 {("G1" 7)}
wvSetPosition -win $_nWave3 {("G1" 6)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSetPosition -win $_nWave3 {("G1" 4)}
wvMoveSelected -win $_nWave3
wvSetPosition -win $_nWave3 {("G1" 4)}
wvSetPosition -win $_nWave3 {("G1" 5)}
wvSelectGroup -win $_nWave3 {G2}
wvSetCursor -win $_nWave3 277981.651376 -snap {("G2" 0)}
wvZoom -win $_nWave3 315663.608563 441681.957187
wvZoomOut -win $_nWave3
wvZoomAll -win $_nWave3
wvZoom -win $_nWave3 190880.733945 775259.938838
wvSelectSignal -win $_nWave3 {( "G1" 5 )} 
wvZoomAll -win $_nWave3
wvSetCursor -win $_nWave3 216207.951070 -snap {("G2" 0)}
