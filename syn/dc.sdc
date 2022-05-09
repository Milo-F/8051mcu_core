###################################################################

# Created by write_sdc on Sat May  7 18:30:42 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions fast -library fast
set_wire_load_mode top
set_wire_load_model -name tsmc090_wl30 -library fast
set_max_area 0
set_max_fanout 8 [current_design]
set_fanout_load 2 [get_ports txd]
set_load -pin_load 1 [get_ports txd]
create_clock [get_ports clk]  -period 10  -waveform {0 5}
set_clock_transition -max -rise 0.1 [get_clocks clk]
set_clock_transition -max -fall 0.1 [get_clocks clk]
set_max_transition 1 [get_clocks clk]
create_clock [get_ports tx_clk]  -period 40  -waveform {0 20}
create_generated_clock [get_pins Uart_ins/UartIf_ins/ClkDiv_tx/clk_o_reg/Q]  -name uart_clk  -source [get_ports tx_clk]  -divide_by 16
set_false_path   -from [get_ports reset]  -to [list [get_cells {cnt_rst_reg[3]}] [get_cells {cnt_rst_reg[2]}]           \
[get_cells {sp_reg[1]}] [get_cells {sp_reg[2]}] [get_cells {p1_reg[0]}]        \
[get_cells {p1_reg[1]}] [get_cells {p1_reg[2]}] [get_cells {p1_reg[3]}]        \
[get_cells {p1_reg[4]}] [get_cells {p1_reg[5]}] [get_cells {p1_reg[6]}]        \
[get_cells {p1_reg[7]}] [get_cells {sp_reg[0]}] [get_cells {p2_reg[7]}]        \
[get_cells {p2_reg[6]}] [get_cells {p2_reg[5]}] [get_cells {p2_reg[4]}]        \
[get_cells {p2_reg[3]}] [get_cells {p2_reg[2]}] [get_cells {p2_reg[1]}]        \
[get_cells {p2_reg[0]}] [get_cells {sp_reg[4]}] [get_cells {sp_reg[5]}]        \
[get_cells {sp_reg[6]}] [get_cells {tmod_reg[7]}] [get_cells {tmod_reg[3]}]    \
[get_cells {tl1_reg[2]}] [get_cells {tl1_reg[1]}] [get_cells {tl0_reg[4]}]     \
[get_cells {tl0_reg[3]}] [get_cells {tl0_reg[2]}] [get_cells {tl0_reg[1]}]     \
[get_cells {tl0_reg[0]}] [get_cells {tcon_reg[5]}] [get_cells {tl0_reg[5]}]    \
[get_cells {p0_reg[4]}] [get_cells {p0_reg[5]}] [get_cells {p0_reg[0]}]        \
[get_cells {p0_reg[1]}] [get_cells {p0_reg[2]}] [get_cells {p0_reg[6]}]        \
[get_cells {p0_reg[3]}] [get_cells {p0_reg[7]}] [get_cells {tl0_reg[6]}]       \
[get_cells {tl1_reg[6]}] [get_cells {tl1_reg[5]}] [get_cells {tl1_reg[4]}]     \
[get_cells {tl1_reg[3]}] [get_cells {tl1_reg[0]}] [get_cells {p3_reg[4]}]      \
[get_cells {p3_reg[5]}] [get_cells {p3_reg[0]}] [get_cells {p3_reg[1]}]        \
[get_cells {p3_reg[2]}] [get_cells {p3_reg[6]}] [get_cells {p3_reg[3]}]        \
[get_cells {p3_reg[7]}] [get_cells {sbuf_reg[6]}] [get_cells {sbuf_reg[7]}]    \
[get_cells {sbuf_reg[4]}] [get_cells {ie_reg[4]}] [get_cells {ie_reg[5]}]      \
[get_cells {ie_reg[0]}] [get_cells {ie_reg[1]}] [get_cells {ie_reg[2]}]        \
[get_cells {ie_reg[6]}] [get_cells {ie_reg[3]}] [get_cells {tcon_reg[0]}]      \
[get_cells {tcon_reg[2]}] [get_cells {tcon_reg[1]}] [get_cells {tcon_reg[3]}]  \
[get_cells {pcon_reg[4]}] [get_cells {ip_reg[4]}] [get_cells {dph_reg[4]}]     \
[get_cells {pcon_reg[5]}] [get_cells {ip_reg[5]}] [get_cells {dph_reg[5]}]     \
[get_cells {pcon_reg[0]}] [get_cells {ip_reg[0]}] [get_cells {dph_reg[0]}]     \
[get_cells {pcon_reg[1]}] [get_cells {ip_reg[1]}] [get_cells {dph_reg[1]}]     \
[get_cells {pcon_reg[2]}] [get_cells {ip_reg[2]}] [get_cells {dph_reg[2]}]     \
[get_cells {pcon_reg[6]}] [get_cells {ip_reg[6]}] [get_cells {dph_reg[6]}]     \
[get_cells {pcon_reg[3]}] [get_cells {pcon_reg[7]}] [get_cells {ip_reg[3]}]    \
[get_cells {dph_reg[3]}] [get_cells {ip_reg[7]}] [get_cells {dph_reg[7]}]      \
[get_cells {scon_reg[4]}] [get_cells {dpl_reg[4]}] [get_cells {scon_reg[5]}]   \
[get_cells {dpl_reg[5]}] [get_cells {scon_reg[0]}] [get_cells {dpl_reg[0]}]    \
[get_cells {scon_reg[1]}] [get_cells {dpl_reg[1]}] [get_cells {scon_reg[2]}]   \
[get_cells {dpl_reg[2]}] [get_cells {scon_reg[6]}] [get_cells {dpl_reg[6]}]    \
[get_cells {scon_reg[3]}] [get_cells {dpl_reg[3]}] [get_cells {scon_reg[7]}]   \
[get_cells {dpl_reg[7]}] [get_cells {sp_reg[3]}] [get_cells {sp_reg[7]}]       \
[get_cells {cnt_rst_reg[0]}] [get_cells {ie_reg[7]}] [get_cells {th0_reg[6]}]  \
[get_cells {th0_reg[5]}] [get_cells {th0_reg[4]}] [get_cells {th0_reg[3]}]     \
[get_cells {th0_reg[2]}] [get_cells {th0_reg[1]}] [get_cells {th0_reg[0]}]     \
[get_cells {th1_reg[6]}] [get_cells {th1_reg[5]}] [get_cells {th1_reg[4]}]     \
[get_cells {th1_reg[3]}] [get_cells {th1_reg[2]}] [get_cells {th1_reg[1]}]     \
[get_cells {th1_reg[0]}] [get_cells {cnt_rst_reg[1]}] [get_cells               \
{tcon_reg[4]}] [get_cells {tmod_reg[2]}] [get_cells {tmod_reg[6]}] [get_cells  \
{th0_reg[7]}] [get_cells {th1_reg[7]}] [get_cells {tmod_reg[5]}] [get_cells    \
{tcon_reg[6]}] [get_cells {tcon_reg[7]}] [get_cells {tmod_reg[1]}] [get_cells  \
{tl0_reg[7]}] [get_cells {tl1_reg[7]}] [get_cells {tmod_reg[4]}] [get_cells    \
{tmod_reg[0]}] [get_cells {sbuf_reg[0]}] [get_cells {sbuf_reg[1]}] [get_cells  \
{sbuf_reg[2]}] [get_cells {sbuf_reg[3]}] [get_cells {sbuf_reg[5]}] [get_cells  \
rst_n_reg] [get_cells {cpu/ram_data_register_reg[1]}] [get_cells               \
{cpu/ins_register_reg[3]}] [get_cells {cpu/run_phase_reg[1]}] [get_cells       \
{cpu/ins_register_reg[0]}] [get_cells {cpu/ins_register_reg[4]}] [get_cells    \
{cpu/run_phase_reg[2]}] [get_cells {cpu/addr_bus_reg[0]}] [get_cells           \
{cpu/program_counter_reg[14]}] [get_cells {cpu/program_counter_reg[13]}]       \
[get_cells {cpu/program_counter_reg[12]}] [get_cells                           \
{cpu/program_counter_reg[11]}] [get_cells {cpu/program_counter_reg[10]}]       \
[get_cells {cpu/program_counter_reg[9]}] [get_cells {cpu/ins_register_reg[1]}] \
[get_cells {cpu/status_reg[1]}] [get_cells {cpu/run_phase_reg[3]}] [get_cells  \
{cpu/ram_data_register_reg[7]}] [get_cells {cpu/ram_data_register_reg[0]}]     \
[get_cells {cpu/ram_data_register_reg[5]}] [get_cells                          \
{cpu/ins_register_reg[2]}] [get_cells {cpu/status_reg[0]}] [get_cells          \
{cpu/nop_cnt_reg[2]}] [get_cells cpu/memory_select_reg] [get_cells             \
{cpu/nop_cnt_reg[1]}] [get_cells {cpu/ram_data_register_reg[2]}] [get_cells    \
{cpu/int_addr_reg[5]}] [get_cells {cpu/int_addr_reg[1]}] [get_cells            \
{cpu/int_addr_reg[0]}] [get_cells cpu/read_en_reg] [get_cells                  \
{cpu/addr_bus_reg[2]}] [get_cells cpu/interupt_en_reg] [get_cells              \
{cpu/program_counter_reg[7]}] [get_cells {cpu/program_counter_reg[6]}]         \
[get_cells {cpu/program_counter_reg[3]}] [get_cells                            \
{cpu/program_counter_reg[15]}] [get_cells {cpu/rom_data_register_reg[0]}]      \
[get_cells {cpu/status_reg[3]}] [get_cells {cpu/status_reg[5]}] [get_cells     \
{cpu/status_reg[4]}] [get_cells {cpu/status_reg[2]}] [get_cells                \
{cpu/acc_reg[3]}] [get_cells {cpu/acc_reg[6]}] [get_cells {cpu/acc_reg[7]}]    \
[get_cells {cpu/psw_reg[3]}] [get_cells {cpu/b_reg[1]}] [get_cells             \
{cpu/b_reg[2]}] [get_cells {cpu/b_reg[3]}] [get_cells {cpu/b_reg[5]}]          \
[get_cells {cpu/b_reg[6]}] [get_cells {cpu/b_reg[7]}] [get_cells               \
{cpu/program_counter_reg[5]}] [get_cells {cpu/program_counter_reg[4]}]         \
[get_cells {cpu/program_counter_reg[2]}] [get_cells                            \
{cpu/program_counter_reg[1]}] [get_cells {cpu/acc_reg[1]}] [get_cells          \
{cpu/acc_reg[2]}] [get_cells {cpu/acc_reg[4]}] [get_cells {cpu/acc_reg[5]}]    \
[get_cells {cpu/acc_reg[0]}] [get_cells {cpu/psw_reg[4]}] [get_cells           \
{cpu/b_reg[0]}] [get_cells {cpu/b_reg[4]}] [get_cells {cpu/int_addr_reg[3]}]   \
[get_cells {cpu/int_addr_reg[4]}] [get_cells {cpu/addr_bus_reg[4]}] [get_cells \
{cpu/addr_bus_reg[1]}] [get_cells {cpu/addr_bus_reg[3]}] [get_cells            \
{cpu/psw_reg[7]}] [get_cells cpu/write_en_reg] [get_cells                      \
{cpu/data_out_reg[2]}] [get_cells {cpu/data_out_reg[1]}] [get_cells            \
{cpu/data_out_reg[0]}] [get_cells {cpu/addr_bus_reg[7]}] [get_cells            \
{cpu/addr_bus_reg[6]}] [get_cells {cpu/status_reg[6]}] [get_cells              \
cpu/ram_write_done_reg] [get_cells cpu/rom_read_done_reg] [get_cells           \
{cpu/psw_reg[1]}] [get_cells {cpu/psw_reg[2]}] [get_cells {cpu/psw_reg[5]}]    \
[get_cells {cpu/psw_reg[6]}] [get_cells {cpu/data_out_reg[6]}] [get_cells      \
{cpu/data_out_reg[5]}] [get_cells {cpu/data_out_reg[4]}] [get_cells            \
{cpu/data_out_reg[3]}] [get_cells {cpu/data_out_reg[7]}] [get_cells            \
cpu/get_ins_done_reg] [get_cells cpu/ram_read_done_reg] [get_cells             \
{cpu/psw_reg[0]}] [get_cells {cpu/nop_cnt_reg[0]}] [get_cells                  \
{cpu/addr_bus_reg[14]}] [get_cells {cpu/addr_bus_reg[13]}] [get_cells          \
{cpu/addr_bus_reg[12]}] [get_cells {cpu/addr_bus_reg[11]}] [get_cells          \
{cpu/addr_bus_reg[10]}] [get_cells {cpu/addr_bus_reg[9]}] [get_cells           \
{cpu/addr_bus_reg[8]}] [get_cells {cpu/addr_bus_reg[15]}] [get_cells           \
{cpu/insdecoder/tmp_reg[1]}] [get_cells {cpu/insdecoder/tmp_reg[5]}]           \
[get_cells {cpu/insdecoder/tmp_reg[3]}] [get_cells                             \
{cpu/insdecoder/tmp_reg[2]}] [get_cells {cpu/insdecoder/tmp_reg[6]}]           \
[get_cells {cpu/insdecoder/tmp_reg[4]}] [get_cells                             \
{cpu/insdecoder/tmp_reg[7]}] [get_cells {cpu/insdecoder/tmp_reg[0]}]           \
[get_cells cpu/clk_1/clk_o_reg] [get_cells {cpu/clk_1/cnt_p_reg[0]}]           \
[get_cells {cpu/clk_1/cnt_p_reg[1]}] [get_cells {cpu/clk_1/cnt_p_reg[3]}]      \
[get_cells {cpu/clk_1/cnt_p_reg[2]}] [get_cells {cpu/clk_1/cnt_p_reg[4]}]      \
[get_cells cpu/clk_6/clk_o_reg] [get_cells {cpu/clk_6/cnt_p_reg[0]}]           \
[get_cells {cpu/clk_6/cnt_p_reg[1]}] [get_cells {cpu/clk_6/cnt_p_reg[3]}]      \
[get_cells {cpu/clk_6/cnt_p_reg[2]}] [get_cells {cpu/clk_6/cnt_p_reg[4]}]      \
[get_cells {cpu/addr_bus_reg[5]}] [get_cells {cpu/program_counter_reg[8]}]     \
[get_cells {cpu/program_counter_reg[0]}] [get_cells                            \
{cpu/ram_data_register_reg[3]}] [get_cells {cpu/ram_data_register_reg[4]}]     \
[get_cells {cpu/ram_data_register_reg[6]}] [get_cells                          \
{cpu/rom_data_register_reg[6]}] [get_cells {cpu/rom_data_register_reg[5]}]     \
[get_cells {cpu/rom_data_register_reg[4]}] [get_cells                          \
{cpu/rom_data_register_reg[3]}] [get_cells {cpu/rom_data_register_reg[2]}]     \
[get_cells {cpu/rom_data_register_reg[1]}] [get_cells                          \
{cpu/rom_data_register_reg[7]}] [get_cells {cpu/ins_register_reg[5]}]          \
[get_cells {cpu/ins_register_reg[6]}] [get_cells {cpu/ins_register_reg[7]}]    \
[get_cells {cpu/run_phase_reg[0]}] [get_cells Timer_ins_1/t_s_early_reg]       \
[get_cells {Timer_ins_1/ini_val_reg[5]}] [get_cells                            \
{Timer_ins_1/ini_val_reg[7]}] [get_cells Timer_ins_1/cnt_sig_early_reg]        \
[get_cells {Timer_ins_1/ini_val_reg[0]}] [get_cells                            \
{Timer_ins_1/ini_val_reg[1]}] [get_cells {Timer_ins_1/ini_val_reg[2]}]         \
[get_cells {Timer_ins_1/ini_val_reg[3]}] [get_cells                            \
{Timer_ins_1/ini_val_reg[4]}] [get_cells {Timer_ins_1/ini_val_reg[6]}]         \
[get_cells Timer_ins_0/t_s_early_reg] [get_cells {Timer_ins_0/ini_val_reg[5]}] \
[get_cells {Timer_ins_0/ini_val_reg[7]}] [get_cells                            \
Timer_ins_0/cnt_sig_early_reg] [get_cells {Timer_ins_0/ini_val_reg[0]}]        \
[get_cells {Timer_ins_0/ini_val_reg[1]}] [get_cells                            \
{Timer_ins_0/ini_val_reg[2]}] [get_cells {Timer_ins_0/ini_val_reg[3]}]         \
[get_cells {Timer_ins_0/ini_val_reg[4]}] [get_cells                            \
{Timer_ins_0/ini_val_reg[6]}] [get_cells {Uart_ins/UartIf_ins/bit_cnt_reg[2]}] \
[get_cells {Uart_ins/UartIf_ins/start_cnt_reg[1]}] [get_cells                  \
Uart_ins/UartIf_ins/txd_out_reg] [get_cells                                    \
{Uart_ins/UartIf_ins/tx_bit_cnt_reg[3]}] [get_cells                            \
{Uart_ins/UartIf_ins/tx_tmp_reg[10]}] [get_cells                               \
{Uart_ins/UartIf_ins/tx_tmp_reg[0]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_tmp_reg[11]}] [get_cells                               \
{Uart_ins/UartIf_ins/tx_bit_cnt_reg[2]}] [get_cells                            \
{Uart_ins/UartIf_ins/tx_tmp_reg[7]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_tmp_reg[3]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_tmp_reg[5]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_tmp_reg[1]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_tmp_reg[9]}] [get_cells                                \
Uart_ins/UartIf_ins/int_hold_reg] [get_cells                                   \
{Uart_ins/UartIf_ins/tx_tmp_reg[8]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_tmp_reg[4]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_tmp_reg[6]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_tmp_reg[2]}] [get_cells                                \
{Uart_ins/UartIf_ins/tx_bit_cnt_reg[1]}] [get_cells                            \
{Uart_ins/UartIf_ins/tx_bit_cnt_reg[0]}] [get_cells                            \
Uart_ins/UartIf_ins/tx_status_reg] [get_cells                                  \
Uart_ins/UartIf_ins/rx_status_reg] [get_cells                                  \
{Uart_ins/UartIf_ins/sample_cnt_reg[0]}] [get_cells                            \
Uart_ins/UartIf_ins/rxd_int_out_reg] [get_cells                                \
{Uart_ins/UartIf_ins/r_data_out_reg[0]}] [get_cells                            \
{Uart_ins/UartIf_ins/r_data_out_reg[1]}] [get_cells                            \
{Uart_ins/UartIf_ins/r_data_out_reg[2]}] [get_cells                            \
{Uart_ins/UartIf_ins/r_data_out_reg[3]}] [get_cells                            \
{Uart_ins/UartIf_ins/r_data_out_reg[4]}] [get_cells                            \
{Uart_ins/UartIf_ins/r_data_out_reg[5]}] [get_cells                            \
{Uart_ins/UartIf_ins/r_data_out_reg[6]}] [get_cells                            \
{Uart_ins/UartIf_ins/r_data_out_reg[7]}] [get_cells                            \
{Uart_ins/UartIf_ins/bit_cnt_reg[0]}] [get_cells                               \
{Uart_ins/UartIf_ins/bit_cnt_reg[1]}] [get_cells                               \
{Uart_ins/UartIf_ins/rx_tmp_reg[1]}] [get_cells                                \
{Uart_ins/UartIf_ins/rx_tmp_reg[2]}] [get_cells                                \
{Uart_ins/UartIf_ins/rx_tmp_reg[4]}] [get_cells                                \
{Uart_ins/UartIf_ins/rx_tmp_reg[6]}] [get_cells                                \
{Uart_ins/UartIf_ins/sample_cnt_reg[3]}] [get_cells                            \
{Uart_ins/UartIf_ins/sample_cnt_reg[1]}] [get_cells                            \
{Uart_ins/UartIf_ins/rx_tmp_reg[8]}] [get_cells                                \
{Uart_ins/UartIf_ins/start_cnt_reg[2]}] [get_cells                             \
{Uart_ins/UartIf_ins/rx_tmp_reg[0]}] [get_cells                                \
{Uart_ins/UartIf_ins/sample_cnt_reg[2]}] [get_cells                            \
{Uart_ins/UartIf_ins/rx_tmp_reg[3]}] [get_cells                                \
{Uart_ins/UartIf_ins/rx_tmp_reg[5]}] [get_cells                                \
{Uart_ins/UartIf_ins/rx_tmp_reg[7]}] [get_cells                                \
{Uart_ins/UartIf_ins/bit_cnt_reg[3]}] [get_cells                               \
{Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[0]}] [get_cells                       \
{Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[3]}] [get_cells                       \
{Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[2]}] [get_cells                       \
{Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[1]}] [get_cells                       \
{Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[4]}] [get_cells                       \
Uart_ins/UartIf_ins/ClkDiv_tx/clk_o_reg] [get_cells                            \
{Uart_ins/UartIf_ins/start_cnt_reg[0]}] [get_cells                             \
{Uart_ins/UartFiFo_ins/r_pt_gray_reg[3]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_gray_reg[0]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_gray_reg[1]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_gray_reg[2]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_gray_reg[1]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_gray_reg[3]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_gray_reg[2]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_gray_reg[0]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_gray_reg[4]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_syn1_reg[4]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn1_reg[4]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[1]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[0]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[2]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[3]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/w_pt_syn1_reg[1]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_syn2_reg[1]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_syn1_reg[2]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_syn2_reg[2]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn1_reg[1]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn2_reg[1]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn1_reg[2]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn2_reg[2]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[2]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[1]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[3]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[0]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/w_pt_syn1_reg[0]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_syn2_reg[0]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn1_reg[0]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn2_reg[0]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_syn1_reg[3]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_syn2_reg[3]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn1_reg[3]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_syn2_reg[3]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[4]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/w_pt_syn2_reg[4]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[4]}] [get_cells                        \
{Uart_ins/UartFiFo_ins/r_pt_syn2_reg[4]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_data_reg[2]}] [get_cells                              \
{Uart_ins/UartFiFo_ins/r_data_reg[4]}] [get_cells                              \
{Uart_ins/UartFiFo_ins/r_data_reg[6]}] [get_cells                              \
{Uart_ins/UartFiFo_ins/r_data_reg[1]}] [get_cells                              \
{Uart_ins/UartFiFo_ins/r_data_reg[0]}] [get_cells                              \
{Uart_ins/UartFiFo_ins/r_data_reg[7]}] [get_cells                              \
{Uart_ins/UartFiFo_ins/r_data_reg[3]}] [get_cells                              \
{Uart_ins/UartFiFo_ins/r_data_reg[5]}] [get_cells                              \
{Uart_ins/UartFiFo_ins/w_pt_reg[4]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/r_pt_gray_reg[4]}] [get_cells                           \
{Uart_ins/UartFiFo_ins/r_pt_reg[4]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/w_pt_reg[3]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/w_pt_reg[2]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/w_pt_reg[1]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/w_pt_reg[0]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/r_pt_reg[2]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/r_pt_reg[3]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/r_pt_reg[0]}] [get_cells                                \
{Uart_ins/UartFiFo_ins/r_pt_reg[1]}] [get_cells                                \
Uart_ins/UartFiFo_ins/is_empty_reg] [get_cells                                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][1]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][2]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][3]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][5]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][6]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][7]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][1]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][1]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][2]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][3]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][4]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][5]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][5]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][6]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][6]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][7]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][7]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][3]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][3]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][3]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][3]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][2]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][2]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][2]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][2]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][1]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][1]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][1]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][0]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][0]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][0]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][0]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][0]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][0]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][7]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][7]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][7]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][7]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][6]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][6]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][6]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][6]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][5]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][5]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][5]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][5]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][4]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][4]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][4]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][4]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][4]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][4]}] [get_cells                \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][0]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][1]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][2]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][3]}] [get_cells                 \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[0]}] [get_cells             \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[1]}] [get_cells             \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[2]}] [get_cells             \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[3]}] [get_cells             \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[4]}] [get_cells             \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[5]}] [get_cells             \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[6]}] [get_cells             \
{Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[7]}]]
set_false_path   -from [get_clocks clk]  -to [get_clocks tx_clk]
set_false_path   -from [get_clocks tx_clk]  -to [get_clocks clk]
set_input_delay -clock clk  6  [get_ports reset]
set_input_delay -clock clk  6  [get_ports cnt_0]
set_input_delay -clock clk  6  [get_ports cnt_1]
set_input_delay -clock clk  6  [get_ports inti0]
set_input_delay -clock clk  6  [get_ports inti1]
set_input_delay -clock clk  6  [get_ports rxd]
set_output_delay -clock uart_clk  6  [get_ports txd]
set_drive 1.5  [get_ports reset]
set_drive 1.5  [get_ports clk]
set_clock_latency 1  [get_ports clk]
set_clock_latency -source -max 1  [get_ports clk]
set_clock_uncertainty -setup 0.5  [get_ports clk]
set_drive 1.5  [get_ports tx_clk]
set_drive 1.5  [get_ports cnt_0]
set_drive 1.5  [get_ports cnt_1]
set_drive 1.5  [get_ports inti0]
set_drive 1.5  [get_ports inti1]
set_drive 1.5  [get_ports rxd]
