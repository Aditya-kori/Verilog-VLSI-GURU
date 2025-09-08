module circuit(clk,rst,a,b,y);
input clk,rst,a,b;
output reg y;
reg o1;
wire d1; 
always@(posedge clk) begin
if(rst==1) begin
o1=0;
y=0;
end
else begin
o1=a;
y=d1;
end
end
assign d1=o1&b;
endmodule
