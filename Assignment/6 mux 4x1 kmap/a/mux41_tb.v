`include "mux41_exp.v"
module mux41_tb;
reg s[1:0];
reg i[3:0];
wire y;
mux41 dut(.*);
	initial begin
	repeat (8) begin
	{s[0],s[1],i[0],i[1],i[2],i[3]}=$random;
	#1;
	$display("s[0]=%b s[1]=%b i0=%b i1=%b i2=%b i3=%b y=%b",s[0],s[1],i[0],i[1],i[2],i[3],y);
	end
	end
endmodule
