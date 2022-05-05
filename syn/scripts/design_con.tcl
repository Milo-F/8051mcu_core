echo "create clock"
set     CLK_NAME            clk
set     CLK_PERIOD          10
set     CLK_SKEW            [expr   $CLK_PERIOD*0.05]
set     CLK_TRAN            [expr   $CLK_PERIOD*0.01]
set     CLK_SRC_LATENCY     [expr   $CLK_PERIOD*0.1]
set     CLK_LATENCY         [expr   $CLK_PERIOD*0.1]
create_clock -period ${CLK_PERIOD} [get_ports ${CLK_NAME}]
set_clock_uncertainty       -setup  $CLK_SKEW           [get_ports  $CLK_NAME]
set_clock_transition        -max    $CLK_TRAN           [get_ports  $CLK_NAME]
set_clock_latency -source   -max    $CLK_SRC_LATENCY    [get_ports  $CLK_NAME]
set_clock_latency           -max    $CLK_LATENCY        [get_ports  $CLK_NAME]

echo "set design rule"
set_max_transition 1 [get_clocks clk]
set_max_fanout 8 [get_designs]
set_max_capacitance 10 [get_designs]
set_max_area 0

set     INPUT_DELAY         [expr   $CLK_PERIOD*0.6]
set     OUTPUT_DELAY        [expr   $CLK_PERIOD*0.6]
set     ALL_IN_EXCEPT_CLK   [remove_from_collection [all_inputs] [get_ports $CLK_NAME]]
set_input_delay     $INPUT_DELAY    -clock  $CLK_NAME   $ALL_IN_EXCEPT_CLK
set_output_delay    $OUTPUT_DELAY   -clock  $CLK_NAME   [all_outputs]