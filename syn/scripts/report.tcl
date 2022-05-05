redirect -tee $log_path/area.rpt {report_area}
redirect -tee $log_path/timing.rpt {report_timing}
redirect -tee $log_path/voilators.rpt {report_constraint -all_violators}
redirect -tee $log_path/min_pulse_width.rpt {report_min_pulse_width}