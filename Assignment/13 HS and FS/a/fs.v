`include "hs.v"
module fs(a,b,bin,diff,bout);
input a,b,bin;
output diff,bout;
wire d1,b1,b2;
hs g1(a,b,d1,b1);
hs g2(d1,bin,diff,b2);
or g3(bout,b1,b2);
endmodule

//# a=1 b=0 bin=0 diff=1 bout=0
//# a=0 b=0 bin=1 diff=1 bout=1
//# a=0 b=0 bin=1 diff=1 bout=1
//# a=0 b=1 bin=1 diff=0 bout=1
//# a=1 b=0 bin=1 diff=0 bout=0
//# a=1 b=0 bin=1 diff=0 bout=0
//# a=1 b=0 bin=1 diff=0 bout=0
//# a=0 b=1 bin=0 diff=1 bout=1
