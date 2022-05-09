report_design > $LOG_PATH/report_design.rpt
# report_area > $LOG_PATH/area.rpt
report_timing > $LOG_PATH/timing.rpt
report_timing -delay_type min >> $LOG_PATH/timing.rpt
report_constraint > $LOG_PATH/constraints.rpt 
report_constraint -all_violators > $LOG_PATH/voilators.rpt 
report_min_pulse_width > $LOG_PATH/min_pulse_width.rpt 
check_timing > $LOG_PATH/check_timing.log 
report_timing -nworst 2  -max_paths 2 > $LOG_PATH/worst_max_path.rpt 