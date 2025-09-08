//`include "mux_41.v"
`include "mux_case.v"
module tb;
reg [1:0]s;
reg [3:0]i;
wire y;
mux4_1 dut(.*);
initial begin
repeat(10) begin
{s,i}=$random;
#1;
$display("s=%b i=%b y=%b",s,i,y);
end
end
endmodule
