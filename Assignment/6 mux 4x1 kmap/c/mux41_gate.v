module mux41(s,i,y);
input s[1:0];
input i[3:0];
output y;
wire s0b,s1b,y1,y2,y3,y4;
not g1(s0b,s[0]);
not g2(s1b,s[1]);
and g3(y1,s0b,s1b,i[0]);
and g4(y2,s0b,s[1],i[1]);
and g5(y3,s[0],s1b,i[2]);
and g6(y4,s[0],s[1],i[3]);
or g7(y,y1,y2,y3,y4);
endmodule


//# s[0]=1 s[1]=0 i0=0 i1=1 i2=0 i3=0 y=0
//# s[0]=0 s[1]=0 i0=0 i1=0 i2=0 i3=1 y=0
//# s[0]=0 s[1]=0 i0=1 i1=0 i2=0 i3=1 y=1
//# s[0]=1 s[1]=0 i0=0 i1=0 i2=1 i3=1 y=1
//# s[0]=0 s[1]=0 i0=1 i1=1 i2=0 i3=1 y=1
//# s[0]=0 s[1]=0 i0=1 i1=1 i2=0 i3=1 y=1
//# s[0]=1 s[1]=0 i0=0 i1=1 i2=0 i3=1 y=0
//# s[0]=0 s[1]=1 i0=0 i1=0 i2=1 i3=0 y=0
