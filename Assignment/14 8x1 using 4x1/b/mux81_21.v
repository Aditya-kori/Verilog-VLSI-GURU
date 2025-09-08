`include "mux21.v";
module mux81(s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7,y);
input i0,i1,i2,i3,i4,i5,i6,i7;
input s2,s1,s0;
output y;
mux g1(s0,i0,i1,m1);
mux g2(s0,i2,i3,m2);
mux g3(s0,i4,i5,m3);
mux g4(s0,i6,i7,m4);
mux g5(s1,m1,m2,m5);
mux g6(s1,m3,m4,m6);
mux g7(s2,m5,m6,y);
endmodule


//# s2=0 s1=1 s0=0 i0=0 i1=0 i2=0 i3=0 i4=0 i5=0 i6=0 i7=1 y=0
//# s2=1 s1=0 s0=1 i0=0 i1=0 i2=1 i3=1 i4=1 i5=1 i6=0 i7=1 y=1
//# s2=0 s1=0 s0=1 i0=1 i1=0 i2=1 i3=1 i4=0 i5=0 i6=1 i7=0 y=0
//# s2=0 s1=0 s0=1 i0=0 i1=0 i2=0 i3=1 i4=0 i5=1 i6=0 i7=1 y=0
//# s2=0 s1=1 s0=0 i0=0 i1=0 i2=1 i3=1 i4=0 i5=0 i6=0 i7=1 y=1
//# s2=0 s1=1 s0=1 i0=1 i1=0 i2=0 i3=1 i4=1 i5=0 i6=0 i7=1 y=1
//# s2=0 s1=0 s0=1 i0=0 i1=0 i2=0 i3=1 i4=0 i5=1 i6=0 i7=1 y=0
//# s2=0 s1=1 s0=1 i0=1 i1=0 i2=1 i3=0 i4=0 i5=1 i6=1 i7=0 y=0
//
