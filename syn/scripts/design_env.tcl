reset_design

echo "================define operating condition====================="
set_operating_conditions    fast    -library    fast

echo "=================set wire load model====================="
set     auto_wire_load_selection    false
set_wire_load_mode      top
set_wire_load_model     -name   tsmc090_wl30    -library    fast

echo "===================set drive and fanout==================="
set_drive       1.5 [all_inputs]
set_fanout_load 2   [all_outputs]
set_load        1   [all_outputs]






