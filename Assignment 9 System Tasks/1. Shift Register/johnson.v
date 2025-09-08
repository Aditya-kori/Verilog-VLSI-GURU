module johnson(clk,rst,q);
	input clk,rst;
	output reg[3:0]q;
	always@(posedge clk) begin
	if(rst==1) q=4'd0;
	else q={q[2],q[1],q[0],~q[3]};
	end
endmodule
