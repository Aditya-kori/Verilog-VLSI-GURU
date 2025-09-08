#vlog tb.v
#vlog sample.v
vlog log.v
#vlog bp.v
#vlog rd_tb.v
vsim tb
run -all
