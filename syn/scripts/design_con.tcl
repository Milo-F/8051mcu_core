echo "create clock"
set     CLK_NAME            clk
set     TX_CLK_NAME         tx_clk
set     CLK_PERIOD          10
set     TX_CLK_PERIOD       40
set     CLK_SKEW            [expr   $CLK_PERIOD*0.05]
set     CLK_TRAN            [expr   $CLK_PERIOD*0.01]
set     CLK_SRC_LATENCY     [expr   $CLK_PERIOD*0.1]
set     CLK_LATENCY         [expr   $CLK_PERIOD*0.1]
create_clock -period ${CLK_PERIOD} [get_ports ${CLK_NAME}]
create_clock -period ${TX_CLK_PERIOD} [get_ports ${TX_CLK_NAME}]
set_clock_uncertainty       -setup  $CLK_SKEW           [get_ports  $CLK_NAME]
set_clock_transition        -max    $CLK_TRAN           [get_ports  $CLK_NAME]
set_clock_latency -source   -max    $CLK_SRC_LATENCY    [get_ports  $CLK_NAME]
set_clock_latency           -max    $CLK_LATENCY        [get_ports  $CLK_NAME]
create_generated_clock -divide_by 16 -name uart_clk -source tx_clk [get_pins Uart_ins/UartIf_ins/ClkDiv_tx/clk_o_reg/Q]

echo "set design rule"
set_max_transition 1 [get_clocks clk]
set_max_fanout 8 [get_designs]
# set_max_capacitance 10 [get_designs]
set_max_area 0

set     INPUT_DELAY         [expr   $CLK_PERIOD*0.6]
set     OUTPUT_DELAY        [expr   $CLK_PERIOD*0.6]
set     MAX_DELAY           [expr   $CLK_PERIOD*0.8]
set     ALL_IN_EXCEPT_CLK   [remove_from_collection [all_inputs] [get_ports [list $CLK_NAME $TX_CLK_NAME]]]
set_input_delay     $INPUT_DELAY    -clock  $CLK_NAME   $ALL_IN_EXCEPT_CLK
# set_output_delay    $OUTPUT_DELAY   -clock  $CLK_NAME   [all_outputs]
set_output_delay    $OUTPUT_DELAY   -clock  uart_clk   [get_ports txd]


set_false_path -from [get_ports reset] -to [all_registers]
set_false_path -from [get_ports $CLK_NAME] -to [get_ports $TX_CLK_NAME]
set_false_path -from [get_ports $TX_CLK_NAME] -to [get_ports $CLK_NAME]
# set_max_delay $MAX_DELAY -from [get_ports $TX_CLK_NAME] -to [get_ports txd]
# set_max_delay $MAX_DELAY -from [get_ports $TX_CLK_NAME] -to [get_ports $CLK_NAME]