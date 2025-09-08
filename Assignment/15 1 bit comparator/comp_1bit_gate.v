module comparator(a,b,y1,y2,y3);
input a,b;
output y1,y2,y3;  //y1=a>b | y2=a<b | y3=a=b
wire ab,bb,m1,m2;
not g2(ab,a);
not g3(bb,b);
and g1(y1,a,bb);
and g4(y2,ab,b);
and g5(m1,ab,bb);
and g6(m2,a,b);
or g7(y3,m1,m2);
endmodule

//# a=0 b=0 (a>b)=0 (a<b)=0 (a=b)=1
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=1 b=1 (a>b)=0 (a<b)=0 (a=b)=1
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=1 b=0 (a>b)=1 (a<b)=0 (a=b)=0

