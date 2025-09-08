#vlog mem_tc.v
#vlog memory_task_tb.v
vlog mem_tc_tb.v
vsim tb +testcase=ALT_WR_RD
#vsim tb
add wave -position insertpoint sim:/tb/dut/*
run -all
