vlib work
vlog NotGatetb.v
vsim NotGatetb
add wave -position insertpoint sim:/NotGatetb/dut/*
run -all
