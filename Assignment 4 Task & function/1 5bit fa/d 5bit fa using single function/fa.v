module fa(a,b,cin,s,cout);
input [4:0]a,b;
input cin;
output reg[4:0]s;
output reg cout;
function reg[5:0]fa1(input reg [4:0]a,b, input cin);
fa1=a+b+cin;
endfunction
always@(*)begin
{cout,s}=fa1(a,b,cin);
end
endmodule
