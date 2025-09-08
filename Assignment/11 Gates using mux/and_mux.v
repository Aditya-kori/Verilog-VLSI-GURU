`include "mux21_v.v"
module and_a(a,b,y);
input a,b;
output y;
mux g1(a,a,b,y);
endmodule
