`include "mux_21.v"
module tb;
reg s;
reg [1:0]s;
wire y;
mux21 dut(.*);
initial begin
{s,i}=$random;
#1;
$display("s=%b, i=%b y=%b",s,i,y);
end
endmodule
