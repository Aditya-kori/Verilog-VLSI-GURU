`include "ha_data.v"
module fa(in1,in2,cin,sum,carry);
input in1,in2,cin;
output sum,carry;
wire i1,i2,i3;
	ha g1(in1,in2,i1,i2);
	ha g2(i2,cin,sum,i3);
	or g3(carry,i2,i3);
endmodule
