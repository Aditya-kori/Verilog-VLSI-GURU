`include "AndGate.v"
module AndGatetb;
reg a,b;
wire y;
AndGate dut(.*);
initial begin
repeat(8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b y=%b",a,b,y);
end
end 
endmodule
