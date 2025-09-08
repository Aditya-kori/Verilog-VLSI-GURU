`include "d_ff_gate.v" 
module tb;
	reg clk,d;
	wire q,qb;
	d_ff dut(.*);
	always #5 clk=~clk;
	initial begin
	clk=0;
	repeat(20) begin
	d=$random;
	#5;
	end
	#100;
	$finish;
	end
endmodule
