redirect -tee $log_path/report_design.rpt {report_design}
redirect -tee $log_path/area.rpt {report_area}
redirect -tee $log_path/timing.rpt {report_timing}
redirect -tee $log_path/constraints.rpt {report_constraint}
redirect -tee $log_path/voilators.rpt {report_constraint -all_violators}
redirect -tee $log_path/min_pulse_width.rpt {report_min_pulse_width}
redirect -tee $log_path/check_timing.log {check_timing}
redirect -tee $log_path/worst_max_path.rpt {report_timing -nworst 2  -max_paths 2}