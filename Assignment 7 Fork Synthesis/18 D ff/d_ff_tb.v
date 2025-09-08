`include "d_ff.v"
module tb;
	reg clk,rst,d;
	wire q;
	d_ff dut(.*);
	always #5 clk=~clk;
	initial begin
	clk=0;
	rst=1;
	d=0;
	#10;
	rst=0;
	repeat(10)begin
	d=$urandom_range(0,1);
	end
	#100;
cd	$finish;
	end
endmodule
