`include "XorGate.v"
module XorGatetb;
reg a,b;
wire y;
XorGate dut(.*);
initial begin
repeat(8)begin
{a,b}=$random;
#1;
$display("%t a=%b b=%b y=%b",$time,a,b,y);
end
end
endmodule
