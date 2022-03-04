###################################################################

# Created by write_sdc on Mon Feb 28 14:58:53 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max slow -max_library slow\
                         -min fast -min_library fast
set_wire_load_model -name tsmc090_wl50 -library fast
set_max_fanout 10 [current_design]
set_max_transition 10 [current_design]
set_max_area 5
create_clock [get_ports clk]  -period 10  -waveform {5 10}
set_max_delay 4  -from [list [get_ports {TCON[6]}] [get_ports {TCON[0]}] [get_ports {IE[0]}]   \
[get_ports {IE[7]}] [get_ports {TCON[7]}] [get_ports {TCON[2]}] [get_ports     \
{IE[5]}] [get_ports {IE[3]}] [get_ports {TCON[3]}] [get_ports {SCON[1]}]       \
[get_ports {IE[1]}] [get_ports {TCON[5]}] [get_ports {IE[6]}] [get_ports       \
{TCON[1]}] [get_ports {SCON[0]}] [get_ports {IE[4]}] [get_ports {TCON[4]}]     \
[get_ports {IE[2]}]]  -to [list [get_ports {TCON_out[2]}] [get_ports {TCON_out[0]}] [get_ports      \
{interupt[4]}] [get_ports {interupt[2]}] [get_ports {TCON_out[7]}] [get_ports  \
{interupt[0]}] [get_ports {TCON_out[5]}] [get_ports {TCON_out[3]}] [get_ports  \
{TCON_out[1]}] [get_ports {interupt[3]}] [get_ports {interupt[1]}] [get_ports  \
{TCON_out[6]}] [get_ports {TCON_out[4]}]]
set_input_delay -clock clk  -max 6  [get_ports rst_n]
set_input_delay -clock clk  -min 4  [get_ports rst_n]
