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
$display("a=%b, b=%b cin=%b sum=%b, carry=%b",a,b,cin,s,cout);
end
end
endmodule


//# a=10100, b=10010 cin=0 sum=00110, carry=1
//# a=11010, b=00000 cin=1 sum=11011, carry=0
//# a=11000, b=00100 cin=1 sum=11101, carry=0
//# a=11001, b=10001 cin=1 sum=01011, carry=1
//# a=01100, b=00110 cin=1 sum=10011, carry=0
//# a=00110, b=00110 cin=1 sum=01101, carry=0
//# a=10001, b=10010 cin=1 sum=00100, carry=1
//# a=01000, b=01001 cin=0 sum=10001, carry=0
//# a=01100, b=00000 cin=1 sum=01101, carry=0
//# a=10100, b=00110 cin=1 sum=11011, carry=0
