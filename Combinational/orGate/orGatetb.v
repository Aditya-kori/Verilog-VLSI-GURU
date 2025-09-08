`include "orGate.v"
module orGatetb;
reg a,b;
wire y;
orGate dut(a,b,y);
initial begin
repeat(8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b y=%b",a,b,y);
end
end
endmodule
