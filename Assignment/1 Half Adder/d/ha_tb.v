`include "ha_behav.v"
module ha_tb;
reg a,b;
wire sum,carry;
ha dut(.*);
	initial begin
		repeat(8) begin
		{a,b}=$random;
		#1;
		$display("a=%b b=%b sum=%b carry=%b",a,b,sum,carry);
		end
	end
endmodule
