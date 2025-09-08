`include "mux41_case.v"
module mux41_tb;
reg [1:0]s;
reg i[3:0];
wire y;
mux41 dut(.*);
	initial begin
	repeat (8) begin
	{s,i[0],i[1],i[2],i[3]}=$random;
	#1;
	$display("s=%b i0=%b i1=%b i2=%b i3=%b y=%b",s,i[0],i[1],i[2],i[3],y);
	end
	s=2'd3;i[0]=0;i[1]=1;i[2]=0;i[3]=1;
	#1;
	$display("s=%b i0=%b i1=%b i2=%b i3=%b y=%b",s,i[0],i[1],i[2],i[3],y);
	end
endmodule
