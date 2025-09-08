`include "johnson.v"
module tb;
	reg clk,rst;
	wire [3:0]q;
	johnson dut(.*);
	always #5 clk=~clk;
	initial begin
	clk=0;
	rst=1;
	#10;
	rst=0;
	#100;
	$finish;
	end
endmodule
