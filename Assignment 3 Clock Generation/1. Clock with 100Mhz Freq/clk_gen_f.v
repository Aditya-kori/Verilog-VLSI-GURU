//Generate a clock with 100MHZ Freq
`timescale 1ns/1ps
module tb;
	reg clk;
	real freq,tp;
	initial begin
	freq=100.0;
	tp=1000/freq;
	clk=0;
	forever #(tp/2) clk=~clk;
	end
	initial begin
	#1000;
	$finish;
	end
endmodule
