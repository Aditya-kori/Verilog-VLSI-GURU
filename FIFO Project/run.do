vlog async_fifo_tb.v
#vlog fifo_tb.v
vsim tb +testcase=EMPTY
#vsim tb 
add wave -position insertpoint sim:/tb/dut/*
run -all
