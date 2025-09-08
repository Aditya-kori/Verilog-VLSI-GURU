`include "FullAdder.v"
module FullAddertb;
reg a,b,c;
wire S,C;
FullAdder dut(.*);
initial begin
repeat(8) begin
{a,b,c}=$random;
#1;
$display("a=%b b=%b cin=%b sum=%b cout=%b",a,b,c,S,C);
end
end
endmodule
