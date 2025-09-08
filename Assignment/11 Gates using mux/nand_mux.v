`include "mux21_v.v"
module nand_gate(a,b,y);
input a,b;
output y;
wire nb;
not g2(nb,b);
mux g1(a,1'b1,nb,y);
endmodule


//# a=0 b=0 y=1
//# a=0 b=1 y=1
//# a=0 b=1 y=1
//# a=1 b=1 y=0
//# a=0 b=1 y=1
//# a=0 b=1 y=1
//# a=0 b=1 y=1
//# a=1 b=0 y=1
