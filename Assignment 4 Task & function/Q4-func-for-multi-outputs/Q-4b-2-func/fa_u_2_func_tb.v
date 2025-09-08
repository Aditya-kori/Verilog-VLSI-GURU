`include "fa_u_2_func.v"
module fa_u_2_func_tb;
reg [3:0]b,a;
reg cin;
integer i;
wire [3:0]s;
wire cout;
fa_4b dyt(a,b,cin,s,cout);
initial begin 
repeat(18) begin
{a,b,cin}=$random;
#2;
$display("a=%b,b=%b,cin=%b,sum=%b,carry=%b",a,b,cin,s,cout);
end
end
endmodule
