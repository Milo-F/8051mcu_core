###################################################################

# Created by write_sdc on Thu May  5 14:31:43 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions fast -library fast
set_wire_load_mode top
set_wire_load_model -name tsmc090_wl50 -library fast
set_max_area 0
set_max_capacitance 10 [current_design]
set_max_fanout 8 [current_design]
set_fanout_load 2 [get_ports txd]
set_load -pin_load 1 [get_ports txd]
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_transition -max -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_max_transition 1 [get_clocks clk]
set_input_delay -clock clk  6  [get_ports reset]
set_input_delay -clock clk  6  [get_ports tx_clk]
set_input_delay -clock clk  6  [get_ports cnt_0]
set_input_delay -clock clk  6  [get_ports cnt_1]
set_input_delay -clock clk  6  [get_ports inti0]
set_input_delay -clock clk  6  [get_ports inti1]
set_input_delay -clock clk  6  [get_ports rxd]
set_output_delay -clock clk  6  [get_ports txd]
set_drive 1.5  [get_ports reset]
set_drive 1.5  [get_ports clk]
set_clock_latency -max 1  [get_ports clk]
set_clock_latency -source -max 1  [get_ports clk]
set_clock_uncertainty -setup 0.5  [get_ports clk]
set_drive 1.5  [get_ports tx_clk]
set_drive 1.5  [get_ports cnt_0]
set_drive 1.5  [get_ports cnt_1]
set_drive 1.5  [get_ports inti0]
set_drive 1.5  [get_ports inti1]
set_drive 1.5  [get_ports rxd]
