//`include "d_ff.v"
`include "d_ff_async.v"
module tb;
	reg clk,rst,d;
	wire q;
	d_ff dut(.*);
	always #5 clk=~clk;
	initial begin
	clk=0;
	d=0;
	rst=1;
	#10;
	rst=0;
	repeat(20) begin
	d=$random;
	#5;
	end
	#100;
	$finish;
	end
endmodule
