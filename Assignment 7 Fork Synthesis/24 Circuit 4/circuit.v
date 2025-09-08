module circuit(a,b,clk1,clk2,rst,z);
	input clk1,clk2,rst,a,b;
	output reg z;
reg o1,y;
wire d1,yb;
always@(posedge clk1) begin
if(rst==1) begin
o1=0;
z=0;
end
else begin
o1=a;
z=yb;
end
end
assign d1=o1&b;
assign yb=~y;
always@(posedge clk2) begin
if(rst==1) y=0;
else y=d1;
end
endmodule
