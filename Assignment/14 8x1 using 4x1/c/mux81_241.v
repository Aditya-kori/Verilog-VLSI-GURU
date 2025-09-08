`include "mux41_en.v"
`include "mux21_gate.v"
module mux81(s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7,y);
input s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7;
output y;
wire s2b,m1,m2;
not g1(s2b,s2);
mux41 g2(s2b,s1,s0,i0,i1,i2,i3,m1);
mux41 g3(s2,s1,s0,i4,i5,i6,i7,m2);
mux21 g4(s2,m1,m2,y);
//or g4(y,m1,m2);
endmodule

//# s2=0 s1=1 s0=0 i0=0 i1=0 i2=0 i3=0 i4=0 i5=0 i6=0 i7=1 y=0
//# s2=1 s1=0 s0=1 i0=0 i1=0 i2=1 i3=1 i4=1 i5=1 i6=0 i7=1 y=1
//# s2=0 s1=0 s0=1 i0=1 i1=0 i2=1 i3=1 i4=0 i5=0 i6=1 i7=0 y=0
//# s2=0 s1=0 s0=1 i0=0 i1=0 i2=0 i3=1 i4=0 i5=1 i6=0 i7=1 y=0
//# s2=0 s1=1 s0=0 i0=0 i1=0 i2=1 i3=1 i4=0 i5=0 i6=0 i7=1 y=1
//# s2=0 s1=1 s0=1 i0=1 i1=0 i2=0 i3=1 i4=1 i5=0 i6=0 i7=1 y=1
//# s2=0 s1=0 s0=1 i0=0 i1=0 i2=0 i3=1 i4=0 i5=1 i6=0 i7=1 y=0
//# s2=0 s1=1 s0=1 i0=1 i1=0 i2=1 i3=0 i4=0 i5=1 i6=1 i7=0 y=0
