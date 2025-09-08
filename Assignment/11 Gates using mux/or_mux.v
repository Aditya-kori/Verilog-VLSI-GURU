`include "mux21_v.v"
module or_gate(a,b,y);
input a,b;
output y;
mux g1(a,b,1'b1,y);
endmodule

//# a=0 b=0 y=0
//# a=0 b=1 y=1
//# a=0 b=1 y=1
//# a=1 b=1 y=1
//# a=0 b=1 y=1
//# a=0 b=1 y=1
//# a=0 b=1 y=1
//# a=1 b=0 y=1

