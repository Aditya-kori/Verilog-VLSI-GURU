vlib work
vlog NorGatetb.v
vsim NorGatetb
add wave -position insertpoint sim:/NorGatetb/dut/*
run -all
