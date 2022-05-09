###############################################################################
#
# Created by PrimeTime write_sdc on Sat May  7 18:29:58 2022
#
###############################################################################

set sdc_version 2.0

set_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm
###############################################################################
#  
# Units
# capacitive_load_unit           : 1 pF
# current_unit                   : 0.001 A
# resistance_unit                : 1 kOhm
# time_unit                      : 1 ns
# voltage_unit                   : 1 V
###############################################################################
set_operating_conditions -analysis_type on_chip_variation  -library [get_libs \
 {fast.db:fast}]  -min fast  -max fast 
###############################################################################
# Clock Related Information
###############################################################################
create_clock -name clk -period 10 -waveform { 0 5 } [get_ports {clk}]
set_clock_latency -source -min  1 [get_clocks {clk}]
set_clock_transition -rise -max  0.1 [get_clocks {clk}]
set_clock_transition -fall -max  0.1 [get_clocks {clk}]
set_clock_transition -rise -min  0.1 [get_clocks {clk}]
set_clock_transition -fall -min  0.1 [get_clocks {clk}]
create_clock -name tx_clk -period 40 -waveform { 0 20 } [get_ports {tx_clk}]
###############################################################################
# Derived Clock related information
###############################################################################
create_generated_clock -name uart_clk -source [get_ports {tx_clk}]  -divide_by \
 16  -add -master_clock [get_clocks {tx_clk}] [get_pins \
 {Uart_ins/UartIf_ins/ClkDiv_tx/clk_o_reg/Q}] 
###############################################################################
# Point to Point exceptions
###############################################################################
set_false_path -from [get_ports {reset}] -to [get_pins {cnt_rst_reg[3]/D \
 cnt_rst_reg[3]/E cnt_rst_reg[2]/D cnt_rst_reg[2]/E sp_reg[1]/D sp_reg[1]/RN \
 sp_reg[2]/D sp_reg[2]/RN p1_reg[0]/D p1_reg[0]/RN p1_reg[1]/D p1_reg[1]/RN \
 p1_reg[2]/D p1_reg[2]/RN p1_reg[3]/D p1_reg[3]/RN p1_reg[4]/D p1_reg[4]/RN \
 p1_reg[5]/D p1_reg[5]/RN p1_reg[6]/D p1_reg[6]/RN p1_reg[7]/D p1_reg[7]/RN \
 sp_reg[0]/D sp_reg[0]/RN p2_reg[7]/D p2_reg[7]/RN p2_reg[6]/D p2_reg[6]/RN \
 p2_reg[5]/D p2_reg[5]/RN p2_reg[4]/D p2_reg[4]/RN p2_reg[3]/D p2_reg[3]/RN \
 p2_reg[2]/D p2_reg[2]/RN p2_reg[1]/D p2_reg[1]/RN p2_reg[0]/D p2_reg[0]/RN \
 sp_reg[4]/D sp_reg[4]/RN sp_reg[5]/D sp_reg[5]/RN sp_reg[6]/D sp_reg[6]/RN \
 tmod_reg[7]/D tmod_reg[7]/RN tmod_reg[3]/D tmod_reg[3]/RN tl1_reg[2]/D \
 tl1_reg[2]/RN tl1_reg[1]/D tl1_reg[1]/RN tl0_reg[4]/D tl0_reg[4]/RN \
 tl0_reg[3]/D tl0_reg[3]/RN tl0_reg[2]/D tl0_reg[2]/RN tl0_reg[1]/D \
 tl0_reg[1]/RN tl0_reg[0]/D tl0_reg[0]/RN tcon_reg[5]/D tcon_reg[5]/RN \
 tl0_reg[5]/D tl0_reg[5]/RN p0_reg[4]/D p0_reg[4]/RN p0_reg[5]/D p0_reg[5]/RN \
 p0_reg[0]/D p0_reg[0]/RN p0_reg[1]/D p0_reg[1]/RN p0_reg[2]/D p0_reg[2]/RN \
 p0_reg[6]/D p0_reg[6]/RN p0_reg[3]/D p0_reg[3]/RN p0_reg[7]/D p0_reg[7]/RN \
 tl0_reg[6]/D tl0_reg[6]/RN tl1_reg[6]/D tl1_reg[6]/RN tl1_reg[5]/D \
 tl1_reg[5]/RN tl1_reg[4]/D tl1_reg[4]/RN tl1_reg[3]/D tl1_reg[3]/RN \
 tl1_reg[0]/D tl1_reg[0]/RN p3_reg[4]/D p3_reg[4]/RN p3_reg[5]/D p3_reg[5]/RN \
 p3_reg[0]/D p3_reg[0]/RN p3_reg[1]/D p3_reg[1]/RN p3_reg[2]/D p3_reg[2]/RN \
 p3_reg[6]/D p3_reg[6]/RN p3_reg[3]/D p3_reg[3]/RN p3_reg[7]/D p3_reg[7]/RN \
 sbuf_reg[6]/D sbuf_reg[6]/RN sbuf_reg[7]/D sbuf_reg[7]/RN sbuf_reg[4]/D \
 sbuf_reg[4]/RN ie_reg[4]/D ie_reg[4]/RN ie_reg[5]/D ie_reg[5]/RN ie_reg[0]/D \
 ie_reg[0]/RN ie_reg[1]/D ie_reg[1]/RN ie_reg[2]/D ie_reg[2]/RN ie_reg[6]/D \
 ie_reg[6]/RN ie_reg[3]/D ie_reg[3]/RN tcon_reg[0]/D tcon_reg[0]/RN \
 tcon_reg[2]/D tcon_reg[2]/RN tcon_reg[1]/D tcon_reg[1]/RN tcon_reg[3]/D \
 tcon_reg[3]/RN pcon_reg[4]/D pcon_reg[4]/RN ip_reg[4]/D ip_reg[4]/RN \
 dph_reg[4]/D dph_reg[4]/RN pcon_reg[5]/D pcon_reg[5]/RN ip_reg[5]/D \
 ip_reg[5]/RN dph_reg[5]/D dph_reg[5]/RN pcon_reg[0]/D pcon_reg[0]/RN \
 ip_reg[0]/D ip_reg[0]/RN dph_reg[0]/D dph_reg[0]/RN pcon_reg[1]/D \
 pcon_reg[1]/RN ip_reg[1]/D ip_reg[1]/RN dph_reg[1]/D dph_reg[1]/RN \
 pcon_reg[2]/D pcon_reg[2]/RN ip_reg[2]/D ip_reg[2]/RN dph_reg[2]/D \
 dph_reg[2]/RN pcon_reg[6]/D pcon_reg[6]/RN ip_reg[6]/D ip_reg[6]/RN \
 dph_reg[6]/D dph_reg[6]/RN pcon_reg[3]/D pcon_reg[3]/RN pcon_reg[7]/D \
 pcon_reg[7]/RN ip_reg[3]/D ip_reg[3]/RN dph_reg[3]/D dph_reg[3]/RN \
 ip_reg[7]/D ip_reg[7]/RN dph_reg[7]/D dph_reg[7]/RN scon_reg[4]/D \
 scon_reg[4]/RN dpl_reg[4]/D dpl_reg[4]/RN scon_reg[5]/D scon_reg[5]/RN \
 dpl_reg[5]/D dpl_reg[5]/RN scon_reg[0]/D scon_reg[0]/RN dpl_reg[0]/D \
 dpl_reg[0]/RN scon_reg[1]/D scon_reg[1]/RN dpl_reg[1]/D dpl_reg[1]/RN \
 scon_reg[2]/D scon_reg[2]/RN dpl_reg[2]/D dpl_reg[2]/RN scon_reg[6]/D \
 scon_reg[6]/RN dpl_reg[6]/D dpl_reg[6]/RN scon_reg[3]/D scon_reg[3]/RN \
 dpl_reg[3]/D dpl_reg[3]/RN scon_reg[7]/D scon_reg[7]/RN dpl_reg[7]/D \
 dpl_reg[7]/RN sp_reg[3]/D sp_reg[3]/RN sp_reg[7]/D sp_reg[7]/RN \
 cnt_rst_reg[0]/D cnt_rst_reg[0]/E ie_reg[7]/D ie_reg[7]/RN th0_reg[6]/D \
 th0_reg[6]/RN th0_reg[5]/D th0_reg[5]/RN th0_reg[4]/D th0_reg[4]/RN \
 th0_reg[3]/D th0_reg[3]/RN th0_reg[2]/D th0_reg[2]/RN th0_reg[1]/D \
 th0_reg[1]/RN th0_reg[0]/D th0_reg[0]/RN th1_reg[6]/D th1_reg[6]/RN \
 th1_reg[5]/D th1_reg[5]/RN th1_reg[4]/D th1_reg[4]/RN th1_reg[3]/D \
 th1_reg[3]/RN th1_reg[2]/D th1_reg[2]/RN th1_reg[1]/D th1_reg[1]/RN \
 th1_reg[0]/D th1_reg[0]/RN cnt_rst_reg[1]/D cnt_rst_reg[1]/E tcon_reg[4]/D \
 tcon_reg[4]/RN tmod_reg[2]/D tmod_reg[2]/RN tmod_reg[6]/D tmod_reg[6]/RN \
 th0_reg[7]/D th0_reg[7]/RN th1_reg[7]/D th1_reg[7]/RN tmod_reg[5]/D \
 tmod_reg[5]/RN tcon_reg[6]/D tcon_reg[6]/RN tcon_reg[7]/D tcon_reg[7]/RN \
 tmod_reg[1]/D tmod_reg[1]/RN tl0_reg[7]/D tl0_reg[7]/RN tl1_reg[7]/D \
 tl1_reg[7]/RN tmod_reg[4]/D tmod_reg[4]/RN tmod_reg[0]/D tmod_reg[0]/RN \
 sbuf_reg[0]/D sbuf_reg[0]/RN sbuf_reg[1]/D sbuf_reg[1]/RN sbuf_reg[2]/D \
 sbuf_reg[2]/RN sbuf_reg[3]/D sbuf_reg[3]/RN sbuf_reg[5]/D sbuf_reg[5]/RN \
 rst_n_reg/D rst_n_reg/E cpu/ram_data_register_reg[1]/D \
 cpu/ram_data_register_reg[1]/RN cpu/ins_register_reg[3]/D \
 cpu/ins_register_reg[3]/RN cpu/run_phase_reg[1]/D cpu/run_phase_reg[1]/RN \
 cpu/ins_register_reg[0]/D cpu/ins_register_reg[0]/RN \
 cpu/ins_register_reg[4]/D cpu/ins_register_reg[4]/RN cpu/run_phase_reg[2]/D \
 cpu/run_phase_reg[2]/RN cpu/addr_bus_reg[0]/D cpu/addr_bus_reg[0]/RN \
 cpu/program_counter_reg[14]/D cpu/program_counter_reg[14]/RN \
 cpu/program_counter_reg[13]/D cpu/program_counter_reg[13]/RN \
 cpu/program_counter_reg[12]/D cpu/program_counter_reg[12]/RN \
 cpu/program_counter_reg[11]/D cpu/program_counter_reg[11]/RN \
 cpu/program_counter_reg[10]/D cpu/program_counter_reg[10]/RN \
 cpu/program_counter_reg[9]/D cpu/program_counter_reg[9]/RN \
 cpu/ins_register_reg[1]/D cpu/ins_register_reg[1]/RN cpu/status_reg[1]/D \
 cpu/status_reg[1]/RN cpu/run_phase_reg[3]/D cpu/run_phase_reg[3]/RN \
 cpu/ram_data_register_reg[7]/D cpu/ram_data_register_reg[7]/RN \
 cpu/ram_data_register_reg[0]/D cpu/ram_data_register_reg[0]/RN \
 cpu/ram_data_register_reg[5]/D cpu/ram_data_register_reg[5]/RN \
 cpu/ins_register_reg[2]/D cpu/ins_register_reg[2]/RN cpu/status_reg[0]/D \
 cpu/status_reg[0]/SN cpu/nop_cnt_reg[2]/D cpu/nop_cnt_reg[2]/SN \
 cpu/memory_select_reg/D cpu/memory_select_reg/SN cpu/nop_cnt_reg[1]/D \
 cpu/nop_cnt_reg[1]/SN cpu/ram_data_register_reg[2]/D \
 cpu/ram_data_register_reg[2]/RN cpu/int_addr_reg[5]/D cpu/int_addr_reg[5]/RN \
 cpu/int_addr_reg[1]/D cpu/int_addr_reg[1]/RN cpu/int_addr_reg[0]/D \
 cpu/int_addr_reg[0]/RN cpu/read_en_reg/D cpu/read_en_reg/RN \
 cpu/addr_bus_reg[2]/D cpu/addr_bus_reg[2]/RN cpu/interupt_en_reg/D \
 cpu/interupt_en_reg/RN cpu/program_counter_reg[7]/D \
 cpu/program_counter_reg[7]/RN cpu/program_counter_reg[6]/D \
 cpu/program_counter_reg[6]/RN cpu/program_counter_reg[3]/D \
 cpu/program_counter_reg[3]/RN cpu/program_counter_reg[15]/D \
 cpu/program_counter_reg[15]/RN cpu/rom_data_register_reg[0]/D \
 cpu/rom_data_register_reg[0]/RN cpu/status_reg[3]/D cpu/status_reg[3]/RN \
 cpu/status_reg[5]/D cpu/status_reg[5]/RN cpu/status_reg[4]/D \
 cpu/status_reg[4]/RN cpu/status_reg[2]/D cpu/status_reg[2]/RN \
 cpu/acc_reg[3]/D cpu/acc_reg[3]/RN cpu/acc_reg[6]/D cpu/acc_reg[6]/RN \
 cpu/acc_reg[7]/D cpu/acc_reg[7]/RN cpu/psw_reg[3]/D cpu/psw_reg[3]/RN \
 cpu/b_reg[1]/D cpu/b_reg[1]/RN cpu/b_reg[2]/D cpu/b_reg[2]/RN cpu/b_reg[3]/D \
 cpu/b_reg[3]/RN cpu/b_reg[5]/D cpu/b_reg[5]/RN cpu/b_reg[6]/D cpu/b_reg[6]/RN \
 cpu/b_reg[7]/D cpu/b_reg[7]/RN cpu/program_counter_reg[5]/D \
 cpu/program_counter_reg[5]/RN cpu/program_counter_reg[4]/D \
 cpu/program_counter_reg[4]/RN cpu/program_counter_reg[2]/D \
 cpu/program_counter_reg[2]/RN cpu/program_counter_reg[1]/D \
 cpu/program_counter_reg[1]/RN cpu/acc_reg[1]/D cpu/acc_reg[1]/RN \
 cpu/acc_reg[2]/D cpu/acc_reg[2]/RN cpu/acc_reg[4]/D cpu/acc_reg[4]/RN \
 cpu/acc_reg[5]/D cpu/acc_reg[5]/RN cpu/acc_reg[0]/D cpu/acc_reg[0]/RN \
 cpu/psw_reg[4]/D cpu/psw_reg[4]/RN cpu/b_reg[0]/D cpu/b_reg[0]/RN \
 cpu/b_reg[4]/D cpu/b_reg[4]/RN cpu/int_addr_reg[3]/D cpu/int_addr_reg[3]/RN \
 cpu/int_addr_reg[4]/D cpu/int_addr_reg[4]/RN cpu/addr_bus_reg[4]/D \
 cpu/addr_bus_reg[4]/RN cpu/addr_bus_reg[1]/D cpu/addr_bus_reg[1]/RN \
 cpu/addr_bus_reg[3]/D cpu/addr_bus_reg[3]/RN cpu/psw_reg[7]/D \
 cpu/psw_reg[7]/RN cpu/write_en_reg/D cpu/write_en_reg/RN \
 cpu/data_out_reg[2]/D cpu/data_out_reg[2]/RN cpu/data_out_reg[1]/D \
 cpu/data_out_reg[1]/RN cpu/data_out_reg[0]/D cpu/data_out_reg[0]/RN \
 cpu/addr_bus_reg[7]/D cpu/addr_bus_reg[7]/RN cpu/addr_bus_reg[6]/D \
 cpu/addr_bus_reg[6]/RN cpu/status_reg[6]/D cpu/status_reg[6]/RN \
 cpu/ram_write_done_reg/D cpu/ram_write_done_reg/RN cpu/rom_read_done_reg/D \
 cpu/rom_read_done_reg/RN cpu/psw_reg[1]/D cpu/psw_reg[1]/RN cpu/psw_reg[2]/D \
 cpu/psw_reg[2]/RN cpu/psw_reg[5]/D cpu/psw_reg[5]/RN cpu/psw_reg[6]/D \
 cpu/psw_reg[6]/RN cpu/data_out_reg[6]/D cpu/data_out_reg[6]/RN \
 cpu/data_out_reg[5]/D cpu/data_out_reg[5]/RN cpu/data_out_reg[4]/D \
 cpu/data_out_reg[4]/RN cpu/data_out_reg[3]/D cpu/data_out_reg[3]/RN \
 cpu/data_out_reg[7]/D cpu/data_out_reg[7]/RN cpu/get_ins_done_reg/D \
 cpu/get_ins_done_reg/RN cpu/ram_read_done_reg/D cpu/ram_read_done_reg/RN \
 cpu/psw_reg[0]/D cpu/psw_reg[0]/RN cpu/nop_cnt_reg[0]/D cpu/nop_cnt_reg[0]/RN \
 cpu/addr_bus_reg[14]/D cpu/addr_bus_reg[14]/RN cpu/addr_bus_reg[13]/D \
 cpu/addr_bus_reg[13]/RN cpu/addr_bus_reg[12]/D cpu/addr_bus_reg[12]/RN \
 cpu/addr_bus_reg[11]/D cpu/addr_bus_reg[11]/RN cpu/addr_bus_reg[10]/D \
 cpu/addr_bus_reg[10]/RN cpu/addr_bus_reg[9]/D cpu/addr_bus_reg[9]/RN \
 cpu/addr_bus_reg[8]/D cpu/addr_bus_reg[8]/RN cpu/addr_bus_reg[15]/D \
 cpu/addr_bus_reg[15]/RN cpu/insdecoder/tmp_reg[1]/D \
 cpu/insdecoder/tmp_reg[1]/RN cpu/insdecoder/tmp_reg[5]/D \
 cpu/insdecoder/tmp_reg[5]/RN cpu/insdecoder/tmp_reg[3]/D \
 cpu/insdecoder/tmp_reg[3]/RN cpu/insdecoder/tmp_reg[2]/D \
 cpu/insdecoder/tmp_reg[2]/RN cpu/insdecoder/tmp_reg[6]/D \
 cpu/insdecoder/tmp_reg[6]/RN cpu/insdecoder/tmp_reg[4]/D \
 cpu/insdecoder/tmp_reg[4]/RN cpu/insdecoder/tmp_reg[7]/D \
 cpu/insdecoder/tmp_reg[7]/RN cpu/insdecoder/tmp_reg[0]/D \
 cpu/insdecoder/tmp_reg[0]/RN cpu/clk_1/clk_o_reg/D cpu/clk_1/clk_o_reg/SN \
 cpu/clk_1/cnt_p_reg[0]/D cpu/clk_1/cnt_p_reg[0]/RN cpu/clk_1/cnt_p_reg[1]/D \
 cpu/clk_1/cnt_p_reg[1]/RN cpu/clk_1/cnt_p_reg[3]/D cpu/clk_1/cnt_p_reg[3]/RN \
 cpu/clk_1/cnt_p_reg[2]/D cpu/clk_1/cnt_p_reg[2]/RN cpu/clk_1/cnt_p_reg[4]/D \
 cpu/clk_1/cnt_p_reg[4]/RN cpu/clk_6/clk_o_reg/D cpu/clk_6/clk_o_reg/SN \
 cpu/clk_6/cnt_p_reg[0]/D cpu/clk_6/cnt_p_reg[0]/RN cpu/clk_6/cnt_p_reg[1]/D \
 cpu/clk_6/cnt_p_reg[1]/RN cpu/clk_6/cnt_p_reg[3]/D cpu/clk_6/cnt_p_reg[3]/RN \
 cpu/clk_6/cnt_p_reg[2]/D cpu/clk_6/cnt_p_reg[2]/RN cpu/clk_6/cnt_p_reg[4]/D \
 cpu/clk_6/cnt_p_reg[4]/RN cpu/addr_bus_reg[5]/D cpu/addr_bus_reg[5]/RN \
 cpu/program_counter_reg[8]/D cpu/program_counter_reg[8]/RN \
 cpu/program_counter_reg[0]/D cpu/program_counter_reg[0]/RN \
 cpu/ram_data_register_reg[3]/D cpu/ram_data_register_reg[3]/RN \
 cpu/ram_data_register_reg[4]/D cpu/ram_data_register_reg[4]/RN \
 cpu/ram_data_register_reg[6]/D cpu/ram_data_register_reg[6]/RN \
 cpu/rom_data_register_reg[6]/D cpu/rom_data_register_reg[6]/RN \
 cpu/rom_data_register_reg[5]/D cpu/rom_data_register_reg[5]/RN \
 cpu/rom_data_register_reg[4]/D cpu/rom_data_register_reg[4]/RN \
 cpu/rom_data_register_reg[3]/D cpu/rom_data_register_reg[3]/RN \
 cpu/rom_data_register_reg[2]/D cpu/rom_data_register_reg[2]/RN \
 cpu/rom_data_register_reg[1]/D cpu/rom_data_register_reg[1]/RN \
 cpu/rom_data_register_reg[7]/D cpu/rom_data_register_reg[7]/RN \
 cpu/ins_register_reg[5]/D cpu/ins_register_reg[5]/RN \
 cpu/ins_register_reg[6]/D cpu/ins_register_reg[6]/RN \
 cpu/ins_register_reg[7]/D cpu/ins_register_reg[7]/RN cpu/run_phase_reg[0]/D \
 cpu/run_phase_reg[0]/RN Timer_ins_1/t_s_early_reg/D \
 Timer_ins_1/t_s_early_reg/RN Timer_ins_1/ini_val_reg[5]/D \
 Timer_ins_1/ini_val_reg[5]/E Timer_ins_1/ini_val_reg[7]/D \
 Timer_ins_1/ini_val_reg[7]/E Timer_ins_1/cnt_sig_early_reg/D \
 Timer_ins_1/cnt_sig_early_reg/RN Timer_ins_1/ini_val_reg[0]/D \
 Timer_ins_1/ini_val_reg[0]/E Timer_ins_1/ini_val_reg[1]/D \
 Timer_ins_1/ini_val_reg[1]/E Timer_ins_1/ini_val_reg[2]/D \
 Timer_ins_1/ini_val_reg[2]/E Timer_ins_1/ini_val_reg[3]/D \
 Timer_ins_1/ini_val_reg[3]/E Timer_ins_1/ini_val_reg[4]/D \
 Timer_ins_1/ini_val_reg[4]/E Timer_ins_1/ini_val_reg[6]/D \
 Timer_ins_1/ini_val_reg[6]/E Timer_ins_0/t_s_early_reg/D \
 Timer_ins_0/t_s_early_reg/RN Timer_ins_0/ini_val_reg[5]/D \
 Timer_ins_0/ini_val_reg[5]/E Timer_ins_0/ini_val_reg[7]/D \
 Timer_ins_0/ini_val_reg[7]/E Timer_ins_0/cnt_sig_early_reg/D \
 Timer_ins_0/cnt_sig_early_reg/RN Timer_ins_0/ini_val_reg[0]/D \
 Timer_ins_0/ini_val_reg[0]/E Timer_ins_0/ini_val_reg[1]/D \
 Timer_ins_0/ini_val_reg[1]/E Timer_ins_0/ini_val_reg[2]/D \
 Timer_ins_0/ini_val_reg[2]/E Timer_ins_0/ini_val_reg[3]/D \
 Timer_ins_0/ini_val_reg[3]/E Timer_ins_0/ini_val_reg[4]/D \
 Timer_ins_0/ini_val_reg[4]/E Timer_ins_0/ini_val_reg[6]/D \
 Timer_ins_0/ini_val_reg[6]/E Uart_ins/UartIf_ins/bit_cnt_reg[2]/D \
 Uart_ins/UartIf_ins/bit_cnt_reg[2]/E Uart_ins/UartIf_ins/start_cnt_reg[1]/D \
 Uart_ins/UartIf_ins/start_cnt_reg[1]/E Uart_ins/UartIf_ins/txd_out_reg/D \
 Uart_ins/UartIf_ins/tx_bit_cnt_reg[3]/D Uart_ins/UartIf_ins/tx_tmp_reg[10]/D \
 Uart_ins/UartIf_ins/tx_tmp_reg[0]/D Uart_ins/UartIf_ins/tx_tmp_reg[11]/D \
 Uart_ins/UartIf_ins/tx_bit_cnt_reg[2]/D Uart_ins/UartIf_ins/tx_tmp_reg[7]/D \
 Uart_ins/UartIf_ins/tx_tmp_reg[3]/D Uart_ins/UartIf_ins/tx_tmp_reg[5]/D \
 Uart_ins/UartIf_ins/tx_tmp_reg[1]/D Uart_ins/UartIf_ins/tx_tmp_reg[9]/D \
 Uart_ins/UartIf_ins/int_hold_reg/D Uart_ins/UartIf_ins/int_hold_reg/RN \
 Uart_ins/UartIf_ins/tx_tmp_reg[8]/D Uart_ins/UartIf_ins/tx_tmp_reg[4]/D \
 Uart_ins/UartIf_ins/tx_tmp_reg[6]/D Uart_ins/UartIf_ins/tx_tmp_reg[2]/D \
 Uart_ins/UartIf_ins/tx_bit_cnt_reg[1]/D \
 Uart_ins/UartIf_ins/tx_bit_cnt_reg[0]/D Uart_ins/UartIf_ins/tx_status_reg/D \
 Uart_ins/UartIf_ins/rx_status_reg/D Uart_ins/UartIf_ins/rx_status_reg/RN \
 Uart_ins/UartIf_ins/sample_cnt_reg[0]/D \
 Uart_ins/UartIf_ins/sample_cnt_reg[0]/E Uart_ins/UartIf_ins/rxd_int_out_reg/D \
 Uart_ins/UartIf_ins/r_data_out_reg[0]/D \
 Uart_ins/UartIf_ins/r_data_out_reg[0]/E \
 Uart_ins/UartIf_ins/r_data_out_reg[1]/D \
 Uart_ins/UartIf_ins/r_data_out_reg[1]/E \
 Uart_ins/UartIf_ins/r_data_out_reg[2]/D \
 Uart_ins/UartIf_ins/r_data_out_reg[2]/E \
 Uart_ins/UartIf_ins/r_data_out_reg[3]/D \
 Uart_ins/UartIf_ins/r_data_out_reg[3]/E \
 Uart_ins/UartIf_ins/r_data_out_reg[4]/D \
 Uart_ins/UartIf_ins/r_data_out_reg[4]/E \
 Uart_ins/UartIf_ins/r_data_out_reg[5]/D \
 Uart_ins/UartIf_ins/r_data_out_reg[5]/E \
 Uart_ins/UartIf_ins/r_data_out_reg[6]/D \
 Uart_ins/UartIf_ins/r_data_out_reg[6]/E \
 Uart_ins/UartIf_ins/r_data_out_reg[7]/D \
 Uart_ins/UartIf_ins/r_data_out_reg[7]/E Uart_ins/UartIf_ins/bit_cnt_reg[0]/D \
 Uart_ins/UartIf_ins/bit_cnt_reg[0]/E Uart_ins/UartIf_ins/bit_cnt_reg[1]/D \
 Uart_ins/UartIf_ins/bit_cnt_reg[1]/E Uart_ins/UartIf_ins/rx_tmp_reg[1]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[1]/E Uart_ins/UartIf_ins/rx_tmp_reg[2]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[2]/E Uart_ins/UartIf_ins/rx_tmp_reg[4]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[4]/E Uart_ins/UartIf_ins/rx_tmp_reg[6]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[6]/E Uart_ins/UartIf_ins/sample_cnt_reg[3]/D \
 Uart_ins/UartIf_ins/sample_cnt_reg[3]/E \
 Uart_ins/UartIf_ins/sample_cnt_reg[1]/D \
 Uart_ins/UartIf_ins/sample_cnt_reg[1]/E Uart_ins/UartIf_ins/rx_tmp_reg[8]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[8]/E Uart_ins/UartIf_ins/start_cnt_reg[2]/D \
 Uart_ins/UartIf_ins/start_cnt_reg[2]/E Uart_ins/UartIf_ins/rx_tmp_reg[0]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[0]/E Uart_ins/UartIf_ins/sample_cnt_reg[2]/D \
 Uart_ins/UartIf_ins/sample_cnt_reg[2]/E Uart_ins/UartIf_ins/rx_tmp_reg[3]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[3]/E Uart_ins/UartIf_ins/rx_tmp_reg[5]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[5]/E Uart_ins/UartIf_ins/rx_tmp_reg[7]/D \
 Uart_ins/UartIf_ins/rx_tmp_reg[7]/E Uart_ins/UartIf_ins/bit_cnt_reg[3]/D \
 Uart_ins/UartIf_ins/bit_cnt_reg[3]/E \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[0]/D \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[0]/RN \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[3]/D \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[3]/RN \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[2]/D \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[2]/RN \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[1]/D \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[1]/RN \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[4]/D \
 Uart_ins/UartIf_ins/ClkDiv_tx/cnt_p_reg[4]/RN \
 Uart_ins/UartIf_ins/ClkDiv_tx/clk_o_reg/D \
 Uart_ins/UartIf_ins/ClkDiv_tx/clk_o_reg/SN \
 Uart_ins/UartIf_ins/start_cnt_reg[0]/D Uart_ins/UartIf_ins/start_cnt_reg[0]/E \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[3]/D \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[3]/RN \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[0]/D \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[0]/RN \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[1]/D \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[1]/RN \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[2]/D \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[2]/RN \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[1]/D \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[1]/RN \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[3]/D \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[3]/RN \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[2]/D \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[2]/RN \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[0]/D \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[0]/RN \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[4]/D \
 Uart_ins/UartFiFo_ins/w_pt_gray_reg[4]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[4]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[4]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[4]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[4]/RN \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[1]/D \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[1]/RN \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[0]/D \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[0]/RN \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[2]/D \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[2]/RN \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[3]/D \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[3]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[1]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[1]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[1]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[1]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[2]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[2]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[2]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[2]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[1]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[1]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[1]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[1]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[2]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[2]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[2]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[2]/RN \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[2]/D \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[2]/RN \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[1]/D \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[1]/RN \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[3]/D \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[3]/RN \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[0]/D \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[0]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[0]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[0]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[0]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[0]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[0]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[0]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[0]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[0]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[3]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn1_reg[3]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[3]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[3]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[3]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn1_reg[3]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[3]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[3]/RN \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[4]/D \
 Uart_ins/UartFiFo_ins/w_pt_rdomain_reg[4]/RN \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[4]/D \
 Uart_ins/UartFiFo_ins/w_pt_syn2_reg[4]/RN \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[4]/D \
 Uart_ins/UartFiFo_ins/r_pt_wdomain_reg[4]/RN \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[4]/D \
 Uart_ins/UartFiFo_ins/r_pt_syn2_reg[4]/RN \
 Uart_ins/UartFiFo_ins/r_data_reg[2]/D Uart_ins/UartFiFo_ins/r_data_reg[2]/RN \
 Uart_ins/UartFiFo_ins/r_data_reg[4]/D Uart_ins/UartFiFo_ins/r_data_reg[4]/RN \
 Uart_ins/UartFiFo_ins/r_data_reg[6]/D Uart_ins/UartFiFo_ins/r_data_reg[6]/RN \
 Uart_ins/UartFiFo_ins/r_data_reg[1]/D Uart_ins/UartFiFo_ins/r_data_reg[1]/RN \
 Uart_ins/UartFiFo_ins/r_data_reg[0]/D Uart_ins/UartFiFo_ins/r_data_reg[0]/RN \
 Uart_ins/UartFiFo_ins/r_data_reg[7]/D Uart_ins/UartFiFo_ins/r_data_reg[7]/RN \
 Uart_ins/UartFiFo_ins/r_data_reg[3]/D Uart_ins/UartFiFo_ins/r_data_reg[3]/RN \
 Uart_ins/UartFiFo_ins/r_data_reg[5]/D Uart_ins/UartFiFo_ins/r_data_reg[5]/RN \
 Uart_ins/UartFiFo_ins/w_pt_reg[4]/D Uart_ins/UartFiFo_ins/w_pt_reg[4]/RN \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[4]/D \
 Uart_ins/UartFiFo_ins/r_pt_gray_reg[4]/RN Uart_ins/UartFiFo_ins/r_pt_reg[4]/D \
 Uart_ins/UartFiFo_ins/w_pt_reg[3]/D Uart_ins/UartFiFo_ins/w_pt_reg[3]/RN \
 Uart_ins/UartFiFo_ins/w_pt_reg[2]/D Uart_ins/UartFiFo_ins/w_pt_reg[2]/RN \
 Uart_ins/UartFiFo_ins/w_pt_reg[1]/D Uart_ins/UartFiFo_ins/w_pt_reg[1]/RN \
 Uart_ins/UartFiFo_ins/w_pt_reg[0]/D Uart_ins/UartFiFo_ins/w_pt_reg[0]/RN \
 Uart_ins/UartFiFo_ins/r_pt_reg[2]/D Uart_ins/UartFiFo_ins/r_pt_reg[2]/E \
 Uart_ins/UartFiFo_ins/r_pt_reg[3]/D Uart_ins/UartFiFo_ins/r_pt_reg[3]/E \
 Uart_ins/UartFiFo_ins/r_pt_reg[0]/D Uart_ins/UartFiFo_ins/r_pt_reg[0]/E \
 Uart_ins/UartFiFo_ins/r_pt_reg[1]/D Uart_ins/UartFiFo_ins/r_pt_reg[1]/E \
 Uart_ins/UartFiFo_ins/is_empty_reg/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[9][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[11][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][7]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[0][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[1][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[2][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[3][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[4][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[5][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[6][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[7][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[10][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[12][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[13][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[14][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[15][4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/mem_reg[8][3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[0]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[0]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[1]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[1]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[2]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[2]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[3]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[3]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[4]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[4]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[5]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[5]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[6]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[6]/E \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[7]/D \
 Uart_ins/UartFiFo_ins/fifo_ram_ins/r_data_out_reg[7]/E}]
set_false_path -from [get_clocks {clk}] -to [get_clocks {tx_clk}]
set_false_path -from [get_clocks {tx_clk}] -to [get_clocks {clk}]
###############################################################################
# Clock Latency Infomation
###############################################################################
set_clock_latency -max  1 [get_ports {clk}]
set_clock_latency -min  1 [get_ports {clk}]
set_clock_latency -source -max  1 [get_ports {clk}]
set_clock_uncertainty -setup  0.5 [get_ports {clk}]
###############################################################################
# External Delay Information
###############################################################################
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {reset}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {cnt_0}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {cnt_1}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {inti0}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {inti1}]
set_input_delay  6 -clock [get_clocks {clk}] [get_ports {rxd}]
set_output_delay  6 -clock [get_clocks {uart_clk}] [get_ports {txd}]
set_wire_load_model -min -library [get_libs {fast}] -name tsmc090_wl30 
set_wire_load_model -max -library [get_libs {fast}] -name tsmc090_wl30 
set_wire_load_mode top
set_max_fanout  8 [current_design]
set_fanout_load 2 [get_ports {txd}]
set_max_transition  1 [get_clocks {clk}] -clock_path  -rise 
set_max_transition  1 [get_clocks {clk}] -clock_path  -fall 
set_max_transition  1 [get_clocks {clk}] -data_path  -rise 
set_max_transition  1 [get_clocks {clk}] -data_path  -fall 
set_drive -rise -min  1.5 [get_ports {clk}]
set_drive -fall -min  1.5 [get_ports {clk}]
set_drive -rise -max  1.5 [get_ports {clk}]
set_drive -fall -max  1.5 [get_ports {clk}]
set_drive -rise -min  1.5 [get_ports {tx_clk}]
set_drive -fall -min  1.5 [get_ports {tx_clk}]
set_drive -rise -max  1.5 [get_ports {tx_clk}]
set_drive -fall -max  1.5 [get_ports {tx_clk}]
set_drive -rise -min  1.5 [get_ports {inti0}]
set_drive -fall -min  1.5 [get_ports {inti0}]
set_drive -rise -max  1.5 [get_ports {inti0}]
set_drive -fall -max  1.5 [get_ports {inti0}]
set_drive -rise -min  1.5 [get_ports {cnt_0}]
set_drive -fall -min  1.5 [get_ports {cnt_0}]
set_drive -rise -max  1.5 [get_ports {cnt_0}]
set_drive -fall -max  1.5 [get_ports {cnt_0}]
set_drive -rise -min  1.5 [get_ports {inti1}]
set_drive -fall -min  1.5 [get_ports {inti1}]
set_drive -rise -max  1.5 [get_ports {inti1}]
set_drive -fall -max  1.5 [get_ports {inti1}]
set_drive -rise -min  1.5 [get_ports {cnt_1}]
set_drive -fall -min  1.5 [get_ports {cnt_1}]
set_drive -rise -max  1.5 [get_ports {cnt_1}]
set_drive -fall -max  1.5 [get_ports {cnt_1}]
set_drive -rise -min  1.5 [get_ports {reset}]
set_drive -fall -min  1.5 [get_ports {reset}]
set_drive -rise -max  1.5 [get_ports {reset}]
set_drive -fall -max  1.5 [get_ports {reset}]
set_drive -rise -min  1.5 [get_ports {rxd}]
set_drive -fall -min  1.5 [get_ports {rxd}]
set_drive -rise -max  1.5 [get_ports {rxd}]
set_drive -fall -max  1.5 [get_ports {rxd}]
set_load -pin_load  1 [get_ports {txd}]
###############################################################################
# POCV Information
###############################################################################
