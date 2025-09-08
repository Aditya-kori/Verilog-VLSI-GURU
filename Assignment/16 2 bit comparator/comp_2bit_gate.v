`include "comp_1bit_gate.v"
module comp_2bit(a,b,y1,y2,y3);
input [1:0]a,b;
output y1,y2,y3;
comparator g1(a[1],b[1],my1,my2,my3); //">" my1,"<" my2,"=" my3
comparator g2(a[0],b[0],ly1,ly2,ly3);
and g3(y3,my3,ly3); //~(a1^b1)&~(a0&b0);
and g4(lgr,my3,ly1);//~(a1^b1)&(a0&b0');
or g5(y1,lgr,my1);
and g6(lsr,my3,ly2);
or g7(y2,lsr,my2);
endmodule

//# a[1]a[0]=01 b[1]b[0]=00 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=00 b[1]b[0]=01 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=10 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=00 b[1]b[0]=11 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=01 b[1]b[0]=01 (a>b)=0 (a<b)=0 (a=b)=1
//# a[1]a[0]=00 b[1]b[0]=10 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=00 b[1]b[0]=01 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=01 b[1]b[0]=10 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=00 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=10 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=01 b[1]b[0]=10 (a>b)=0 (a<b)=1 (a=b)=0
