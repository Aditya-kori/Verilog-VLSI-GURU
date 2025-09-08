`include "NandGate.v"
module NandGatetb;
reg a,b;
wire y;
NandGate dut (.*);
initial begin
repeat(8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b y=%b",a,b,y);
end
end
endmodule
