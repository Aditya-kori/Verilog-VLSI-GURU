`include "mux41_data.v"
module mux81(s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7,y);
input s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7;
output y;
wire m1,m2;
mux41 g1(s0,s1,i0,i1,i2,i3,m1);
mux41 g2(s0,s1,i4,i5,i6,i7,m2);
mux41 g3(s2,s2,m1,1'b0,1'b0,m2,y);
endmodule
