`timescale 1ns/1ps
module tb;
	reg clk;
	real freq,tp,d_c,ton,toff;
	always begin
	clk=0;
	#(toff);
	clk=1;
	#(ton);
	end
	initial begin
	$value$plusargs("Freq=%f",freq);
	$value$plusargs("Duty_cycle=%f",d_c);
	tp=1000/freq;
	ton=(d_c*tp)/100.0;
	toff=((100-d_c)*tp)/100.0;
	#1000;
	$finish;
	end
endmodule
