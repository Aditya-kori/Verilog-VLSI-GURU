vlog clk_gen.v
vsim tb
add wave -r sim:/tb/*
run -all
