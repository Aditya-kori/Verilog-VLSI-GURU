`include "fa_data.v"
module fa_4b(a,b,cin,sum,carry);
	input [3:0]a,b;
	input cin;
	output [3:0]sum;
	output carry;
	wire c1,c2,c3;
	fa g2(a[1],b[1],c1,sum[1],c2);
	fa g1(a[0],b[0],cin,sum[0],c1);
	fa g4(a[3],b[3],c3,sum[3],carry);
	fa g3(a[2],b[2],c2,sum[2],c3);
endmodule
