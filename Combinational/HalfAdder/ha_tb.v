`include "ha.v"
module ha_tb;
reg a,b;
wire sum,carry;
ha dut(a,b,sum,carry);
	initial begin
	repeat(8) begin
	{a,b}=$random;
	#1;
	$display("a=%0b,b=%0b,sum=%0b,carry=%0b",a,b,sum,carry);
	end
	end
endmodule
