`timescale 1ns/1ps
module tb;
	reg clk;
	real freq,tp;
	initial begin
	$value$plusargs("Freq=%f",freq);
	tp=1000/freq;
	clk=0;
	#1000;
	$finish;
	end
	always #(tp/2) clk=~clk;
	
endmodule
