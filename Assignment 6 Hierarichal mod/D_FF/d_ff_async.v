module d_ff(clk,rst,d,q);
	input clk,rst,d;
	output reg q;
	always@(posedge clk or posedge rst) begin
	if(rst==1) q=0;
	else q=d;
	end
endmodule
