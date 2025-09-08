`include "fs.v"
module fs_fs(a,b,bin,diff,bout);
input [2:0]a,b;
input bin;
output [2:0]diff;
output bout;
wire b1,b2;
fs g1(.a(a[0]),.b(b[0]),.bin(bin),.diff(diff[0]),.bout(b1));
fs g2(.a(a[1]),.b(b[1]),.bin(b1),.diff(diff[1]),.bout(b2));
fs g3(.a(a[2]),.b(b[2]),.bin(b2),.diff(diff[2]),.bout(bout));
endmodule

//# a=010 b=010 bin=0 diff=000 bout=0
//# a=000 b=000 bin=1 diff=111 bout=1
//# a=000 b=100 bin=1 diff=011 bout=1
//# a=110 b=001 bin=1 diff=100 bout=0
//# a=000 b=110 bin=1 diff=001 bout=1
//# a=000 b=110 bin=1 diff=001 bout=1
//# a=110 b=010 bin=1 diff=011 bout=0
//# a=001 b=001 bin=0 diff=000 bout=0
