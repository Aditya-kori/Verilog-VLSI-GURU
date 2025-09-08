module circuit(a,b,rst,clk,z);
input a,b,rst,clk;
output reg z;
reg y,o1;
reg yb,d1;
always@(posedge clk) begin
if(rst==1) begin
o1=0;
y=0;
z=0;
end
else begin
o1=a;
y=d1;
z=yb;
end
assign d1=o1&b;
assign yb=~y;
end
endmodule
