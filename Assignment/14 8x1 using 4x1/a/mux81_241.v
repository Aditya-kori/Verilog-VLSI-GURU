`include "mux41_en.v"
module mux81(s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7,y);
input s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7;
output y;
wire s2b,m1,m2;
not g1(s2b,s2);
mux41 g2(s2,s1,s0,i0,i1,i2,i3,m1);
mux41 g3(s2b,s1,s0,i4,i5,i6,i7,m2);
or g4(y,m1,m2);
endmodule
