module fa(a,b,cin,s,cout);
input [4:0]a,b;
input cin;
output reg[4:0]s;
output reg cout;
task fa1(input reg[4:0]a,b,input cin,output reg [4:0]sum, output carry);
begin
{carry,sum}=a+b+cin;
end
endtask
always@(*) begin
fa1(a,b,cin,s,cout);
end
endmodule
