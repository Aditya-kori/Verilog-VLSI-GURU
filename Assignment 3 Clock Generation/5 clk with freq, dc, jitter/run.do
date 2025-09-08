vlog clk_gen.v
vsim tb +freq=200 +d_c=50 +jitter=3
add wave -position insertpoint sim:/tb/*
run -all
