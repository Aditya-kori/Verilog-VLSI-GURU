module fa(a,b,cin,s,cout);
parameter N=5;
input [N-1:0]a,b;
input cin;
output reg[N-1:0]s;
output reg cout;
task fa1(input reg[N-1:0]a,b,input cin,output reg [N-1:0]sum, output carry);
begin
{carry,sum}=a+b+cin;
end
endtask
always@(*) begin
fa1(a,b,cin,s,cout);
end
endmodule
