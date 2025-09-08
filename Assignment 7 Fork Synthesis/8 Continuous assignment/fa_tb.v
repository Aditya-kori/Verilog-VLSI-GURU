`include "full_4b.v"
module tb;
	reg[3:0]a,b;
	reg cin;
	wire [3:0]sum;
	wire carry;
fa_4b dut(.*);
initial begin
{a,b,cin}=$random;
#1;
$display("a=%b, b=%b, cin=%b, sum=%b, carry=%b",a,b,cin,sum,carry);
end
endmodule
//# a=1001, b=0010, cin=0, sum=1011, carry=0

