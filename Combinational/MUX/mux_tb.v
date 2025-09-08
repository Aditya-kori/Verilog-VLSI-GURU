`include "mux21_v.v"
module tb;
reg [1:0]i;
reg s;
wire y;
mux dut (s,i,y);
initial begin
repeat (8) begin
{s,i[0],i[1]}=$random;
#1;
$display("s=%b i[0]=%b i[1]=%b y=%b",s,i[0],i[1],y);
end
end
endmodule
