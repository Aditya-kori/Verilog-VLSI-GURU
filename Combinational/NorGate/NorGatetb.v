`include "NorGate.v"
module NorGatetb;
reg a,b;
wire y;
NorGate dut (.*);
initial begin
repeat (8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b y=%b",a,b,y);
end
end
endmodule
