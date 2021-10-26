debImport "-i" "-simflow" "-simBin" "./simv" "-simDelim" "-a sim.log"
srcTBInvokeSim
verdiWindowResize -win $_Verdi_1 "0" "23" "1536" "841"
srcSignalView -on
srcSignalViewSelect "tb_get_ins.clk_1M"
srcSignalViewSelect "tb_get_ins.clk_1M" "tb_get_ins.clk_6M" \
           "tb_get_ins.memory_select" "tb_get_ins.psen" "tb_get_ins.read_en" \
           "tb_get_ins.write_en" "tb_get_ins.addr_bus\[15:0\]" \
           "tb_get_ins.data_bus\[7:0\]" "tb_get_ins.data_out\[7:0\]" \
           "tb_get_ins.EA" "tb_get_ins.clk" "tb_get_ins.rst_n" \
           "tb_get_ins.instruction\[7:0\]" "tb_get_ins.interupt\[1:0\]" \
           "tb_get_ins.timer\[1:0\]"
srcSignalViewSelect "tb_get_ins.clk_1M" "tb_get_ins.clk_6M" \
           "tb_get_ins.memory_select" "tb_get_ins.psen" "tb_get_ins.read_en" \
           "tb_get_ins.write_en" "tb_get_ins.addr_bus\[15:0\]" \
           "tb_get_ins.data_bus\[7:0\]" "tb_get_ins.data_out\[7:0\]" \
           "tb_get_ins.EA" "tb_get_ins.clk" "tb_get_ins.rst_n" \
           "tb_get_ins.instruction\[7:0\]" "tb_get_ins.interupt\[1:0\]" \
           "tb_get_ins.timer\[1:0\]"
wvCreateWindow
srcSignalViewAddSelectedToWave -win $_nTrace1
debExit
