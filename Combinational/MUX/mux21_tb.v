`include "mux21_data.v"
module tb;
	reg s,i0,i1;
	wire y;
	mux21 dut (s,i0,i1,y);
		initial begin
		repeat (8) begin
		{s,i0,i1}=$random;
		#1;
		$display("s=%b,i0=%b,i1=%b,y-%b",s,i0,i1,y);
		end
		end
endmodule
