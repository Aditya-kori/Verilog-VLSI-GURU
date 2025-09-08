`include "mux41_data.v"
module mux41_tb;
reg s0,s1,i0,i1,i2,i3;
wire y;
mux41 dut(.*);
	initial begin
	repeat (8) begin
	{s0,s1,i0,i1,i2,i3}=$random;
	#1;
	$display("s1=%b,s0=%b,i0=%b,i1=%b,i2=%b,i3=%b,y=%b",s1,s0,i0,i1,i2,i3,y);
	end
end
endmodule
