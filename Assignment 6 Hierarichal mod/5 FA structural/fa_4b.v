`include "fa.v"
module fa_4b(a,b,cin,sum,carry);
parameter N=5;
		input [N-1:0]a,b;
		input cin;
		output [N-1:0]sum;
		wire [N:0]c_t;
		output carry;
		genvar i;
		assign c_t[0]=cin;
		for(i=0;i<N;i=i+1) begin
		fa g1(a[i],b[i],c_t[i],sum[i],c_t[i+1]);
		end
		assign carry=c_t[N];
endmodule
