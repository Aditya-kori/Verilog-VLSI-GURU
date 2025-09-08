`include "fa.v"
module tb;
reg [4:0]a,b;
reg cin;
wire [4:0]s;
wire cout;
fa dut(.*);
initial begin
repeat(10) begin
{a,b,cin}=$random;
#1;
$display("a-%b b=%b cin=%b s=%b cout=%b",a,b,cin,s,cout);
end
end
endmodule
//# a-10100 b=10010 cin=0 s=00110 cout=1
//# a-11010 b=00000 cin=1 s=11011 cout=0
//# a-11000 b=00100 cin=1 s=11101 cout=0
//# a-11001 b=10001 cin=1 s=01011 cout=1
//# a-01100 b=00110 cin=1 s=10011 cout=0
//# a-00110 b=00110 cin=1 s=01101 cout=0
//# a-10001 b=10010 cin=1 s=00100 cout=1
//# a-01000 b=01001 cin=0 s=10001 cout=0
//# a-01100 b=00000 cin=1 s=01101 cout=0
//# a-10100 b=00110 cin=1 s=11011 cout=0
