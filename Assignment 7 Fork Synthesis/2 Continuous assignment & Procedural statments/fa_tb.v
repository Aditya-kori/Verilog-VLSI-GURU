`include "fa.v"
module tb;
	reg a,b,cin;
	wire sum,carry;
	fa dut(.*);
	initial begin
	repeat(10)begin
	{a,b,cin}=$random;
	#1;
	$display("a=%b, b=%b, c=%b, sum=%b, carry=%b",a,b,cin,sum,carry);
	end
	end
endmodule

//# a=1, b=0, c=0, sum=1, carry=0
//# a=0, b=0, c=1, sum=1, carry=0
//# a=0, b=0, c=1, sum=1, carry=0
//# a=0, b=1, c=1, sum=0, carry=1
//# a=1, b=0, c=1, sum=0, carry=1
//# a=1, b=0, c=1, sum=0, carry=1
//# a=1, b=0, c=1, sum=0, carry=1
//# a=0, b=1, c=0, sum=1, carry=0
//# a=0, b=0, c=1, sum=1, carry=0
//# a=1, b=0, c=1, sum=0, carry=1

