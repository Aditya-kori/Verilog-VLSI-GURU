`timescale 1ns/1ps
module tb;
	reg clk;
	real freq,tp;
	realtime cur_edge_time,prev_edge_time,jitter,jitter_cal;
	always #10 clk=~clk;
	initial begin
	clk=1;
	repeat(20) begin
	prev_edge_time=$realtime;
	@(posedge clk);
	cur_edge_time=$realtime;
	jitter=3;
	jitter_cal=($urandom_range((100.0-jitter),(100.0+jitter)))/100.0;
	tp=(cur_edge_time-prev_edge_time)*jitter_cal;
	freq=(10**3)/tp;
	$display("freq=%.3f",freq);
	end
	end
	initial begin
	#1000;
	$finish;
	end
	endmodule

//# freq=48.544
//# freq=49.505
//# freq=50.505
//# freq=48.544
//# freq=50.505
//# freq=50.000
//# freq=51.546
//# freq=48.544
//# freq=49.020
//# freq=51.546
//# freq=51.546
//# freq=49.020
//# freq=49.020
//# freq=51.546
//# freq=50.000
//# freq=50.000
//# freq=51.020
//# freq=49.020
//# freq=48.544
//# freq=48.544
