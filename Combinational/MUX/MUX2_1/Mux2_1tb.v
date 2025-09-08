`include "Mux2_1.v"
module Mux2_1tb;
reg s;
reg I[0:1];
wire y;
Mux2_1 dut(.*);
initial begin
repeat(8) begin
{s,I[0],I[1]}=$random;
#1;
$display("s=%b I[0]=%b I[1]=%b y=%b",s,I[0],I[1],y);
end 
s=1'bz;I[0]=0;I[1]=1;
#1;
$display("s=%b I[0]=%b I[1]=%b y=%b",s,I[0],I[1],y);
end
endmodule
