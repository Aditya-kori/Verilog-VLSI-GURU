module fa(a,b,cin,sum,carry);
parameter N=5;
input [N-1:0]a,b;
input cin;
output [N-1:0]sum;
output carry;
assign {carry,sum}=a+b+cin;
endmodule
