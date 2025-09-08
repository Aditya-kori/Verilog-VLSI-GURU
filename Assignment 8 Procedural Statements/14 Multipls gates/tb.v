`include "sample.v"
module tb;
	reg [7:0]a,b,c;
	wire [7:0]x,y,z;
	sample dut(.*);
	initial begin
	repeat(10)begin
	{a,b,c}=$random;
	#1;
	$display("a=%0d b=%0d c=%0d x=%0d y=%0d z=%0d",a,b,c,x,y,z);
	end
	end
endmodule
