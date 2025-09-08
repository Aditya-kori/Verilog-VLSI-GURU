`include "fa_u_1_func.v"
module fa_u_1_func_tb;
reg b,a;
reg cin;
wire sum;
wire carry;
fa_u_1_func dyt(a,b,cin,sum,carry);
initial begin 
repeat(10) begin
{a,b,cin}=$random;
#2;
$display("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,sum,carry);
end
end
endmodule
