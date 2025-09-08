`include "fa_gate.v"
module fa_tb;
reg a,b,cin;
wire sum,cout;
fa dut(a,b,cin,sum,cout);
	initial begin
	repeat (8) begin
	{a,b,cin}=$random;
	#2;
	$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
	end
	a=0;b=0;cin=0;
	#1;
	$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,cin,sum,cout);
	end
endmodule
