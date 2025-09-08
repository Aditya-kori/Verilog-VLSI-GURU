`include "mux_21.v"
module tb;
	reg s,i0,i1;
	wire y;
	mux dut(.*);
	initial begin
	repeat(10) begin
	{s,i0,i1}=$random;
	#1;
	$display("s=%b, i0=%b, i1=%b, y=%b",s,i0,i1,y);
	end
	end
endmodule

//# s=1, i0=0, i1=0, y=0
//# s=0, i0=0, i1=1, y=0
//# s=0, i0=0, i1=1, y=0
//# s=0, i0=1, i1=1, y=1
//# s=1, i0=0, i1=1, y=1
//# s=1, i0=0, i1=1, y=1
//# s=1, i0=0, i1=1, y=1
//# s=0, i0=1, i1=0, y=1
//# s=0, i0=0, i1=1, y=0
//# s=1, i0=0, i1=1, y=1
