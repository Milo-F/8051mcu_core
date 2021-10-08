# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Fri Oct 8 17:28:53 2021
# Designs open: 1
#   Sim: /home/milo/Codes/ICCodes/mcu51/simv
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: tb_cpu
#   Group count = 6
#   Group ALU signal count = 7
#   Group tb_cpu signal count = 14
#   Group cpu signal count = 23
#   Group ale signal count = 4
#   Group clk_1 signal count = 9
#   Group clk_6 signal count = 9
# End_DVE_Session_Save_Info

# DVE version: L-2016.06_Full64
# DVE build date: May 24 2016 21:01:02


#<Session mode="Full" path="/home/milo/Codes/ICCodes/mcu51/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set -value 100ns

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state maximized -rect {{1 38} {1920 1024}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_set_toolbar_attributes -toolbar {Simulator} -dock_state top
gui_set_toolbar_attributes -toolbar {Simulator} -offset 0
gui_show_toolbar -toolbar {Simulator}
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -dock_state top
gui_set_toolbar_attributes -toolbar {Interactive Rewind} -offset 0
gui_show_toolbar -toolbar {Interactive Rewind}
gui_set_toolbar_attributes -toolbar {Testbench} -dock_state top
gui_set_toolbar_attributes -toolbar {Testbench} -offset 0
gui_show_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 115]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 115
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 114} {height 678} {dock_state left} {dock_on_new_line true} {child_hier_colhier 140} {child_hier_coltype 100} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 201]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 201
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 677
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 200} {height 678} {dock_state left} {dock_on_new_line true} {child_data_colvariable 140} {child_data_colvalue 100} {child_data_coltype 40} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 202]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 1860
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 202
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1919} {height 201} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { [llength [lindex [gui_get_db -design Sim] 0]] == 0 } {
gui_set_env SIMSETUP::SIMARGS {{-a sim.log}}
gui_set_env SIMSETUP::SIMEXE {./simv}
gui_set_env SIMSETUP::ALLOW_POLL {0}
if { ![gui_is_db_opened -db {/home/milo/Codes/ICCodes/mcu51/simv}] } {
gui_sim_run Ucli -exe simv -args { -a sim.log -ucligui} -dir /home/milo/Codes/ICCodes/mcu51 -nosource
}
}
if { ![gui_sim_state -check active] } {error "Simulator did not start correctly" error}
gui_set_precision 1ps
gui_set_time_units 1ps
#</Database>

# DVE Global setting session: 


# Global: Breakpoints

# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {tb_cpu.cpu}
gui_load_child_values {tb_cpu.cpu.ale}
gui_load_child_values {tb_cpu.cpu.clk_1}
gui_load_child_values {tb_cpu.cpu.clk_6}
gui_load_child_values {ALU}
gui_load_child_values {tb_cpu}


set _session_group_1 ALU
gui_sg_create "$_session_group_1"
set ALU "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { ALU.c_in ALU.a_data ALU.alu_op ALU.c_out ALU.ans ALU.b_data ALU.rst_n }

set _session_group_2 tb_cpu
gui_sg_create "$_session_group_2"
set tb_cpu "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { tb_cpu.read_en tb_cpu.reset tb_cpu.addr_bus tb_cpu.clk_1M tb_cpu.clk_6M tb_cpu.ALE tb_cpu.PSEN tb_cpu.data_bus_in tb_cpu.data_bus tb_cpu.EA tb_cpu.write_en tb_cpu.clk tb_cpu.timing tb_cpu.interupt }

set _session_group_3 cpu
gui_sg_create "$_session_group_3"
set cpu "$_session_group_3"

gui_sg_addsignal -group "$_session_group_3" { tb_cpu.cpu.clk tb_cpu.cpu.reset tb_cpu.cpu.data_bus tb_cpu.cpu.addr_bus tb_cpu.cpu.EA tb_cpu.cpu.interupt tb_cpu.cpu.timing tb_cpu.cpu.read_en tb_cpu.cpu.write_en tb_cpu.cpu.clk_1M tb_cpu.cpu.clk_6M tb_cpu.cpu.ALE tb_cpu.cpu.PSEN tb_cpu.cpu.cnt_rst tb_cpu.cpu.rst_n tb_cpu.cpu.program_counter tb_cpu.cpu.addr_register tb_cpu.cpu.data_register tb_cpu.cpu.temp_register tb_cpu.cpu.instruction_register tb_cpu.cpu.psw tb_cpu.cpu.accumulator tb_cpu.cpu.b }

set _session_group_4 ale
gui_sg_create "$_session_group_4"
set ale "$_session_group_4"

gui_sg_addsignal -group "$_session_group_4" { tb_cpu.cpu.ale.clk tb_cpu.cpu.ale.rst_n tb_cpu.cpu.ale.ALE tb_cpu.cpu.ale.cnt }

set _session_group_5 clk_1
gui_sg_create "$_session_group_5"
set clk_1 "$_session_group_5"

gui_sg_addsignal -group "$_session_group_5" { tb_cpu.cpu.clk_1.clk_in tb_cpu.cpu.clk_1.rst_n tb_cpu.cpu.clk_1.clk_out tb_cpu.cpu.clk_1.cnt_p tb_cpu.cpu.clk_1.cnt_n tb_cpu.cpu.clk_1.clk_p tb_cpu.cpu.clk_1.clk_n tb_cpu.cpu.clk_1.clk_o tb_cpu.cpu.clk_1.DIV_NUM }
gui_set_radix -radix {decimal} -signals {Sim:tb_cpu.cpu.clk_1.DIV_NUM}
gui_set_radix -radix {twosComplement} -signals {Sim:tb_cpu.cpu.clk_1.DIV_NUM}

set _session_group_6 clk_6
gui_sg_create "$_session_group_6"
set clk_6 "$_session_group_6"

gui_sg_addsignal -group "$_session_group_6" { tb_cpu.cpu.clk_6.clk_in tb_cpu.cpu.clk_6.rst_n tb_cpu.cpu.clk_6.clk_out tb_cpu.cpu.clk_6.cnt_p tb_cpu.cpu.clk_6.cnt_n tb_cpu.cpu.clk_6.clk_p tb_cpu.cpu.clk_6.clk_n tb_cpu.cpu.clk_6.clk_o tb_cpu.cpu.clk_6.DIV_NUM }
gui_set_radix -radix {decimal} -signals {Sim:tb_cpu.cpu.clk_6.DIV_NUM}
gui_set_radix -radix {twosComplement} -signals {Sim:tb_cpu.cpu.clk_6.DIV_NUM}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 100000



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design Sim
catch {gui_list_select -id ${Hier.1} {ALU}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {ALU}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active tb_cpu /home/milo/Codes/ICCodes/mcu51/./CPU/tb_cpu.v
gui_view_scroll -id ${Source.1} -vertical -set 36
gui_src_set_reusable -id ${Source.1}
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${HSPane.1}
}
#</Session>

