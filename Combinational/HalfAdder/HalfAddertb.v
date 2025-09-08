`include "HalfAdder.v"
module HalfAddertb;
reg a,b;
wire s,c;
HalfAdder dut(a,b,s,c);
initial begin
repeat(8) begin
{a,b}=$random;
#2;
$display("a=%b b=%b s=%b c=%b",a,b,s,c);
end
end
endmodule
