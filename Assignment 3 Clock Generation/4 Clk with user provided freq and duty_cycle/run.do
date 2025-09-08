vlog clk_gen_f.v
vsim tb +Freq=200 +Duty_cycle=60
add wave -position insertpoint sim:/tb/*
run -all
