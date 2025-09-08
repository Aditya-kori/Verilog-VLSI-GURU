vlog clk_gen_user.v
vsim tb +Freq=200
add wave -position insertpoint sim:/tb/*
run -all
