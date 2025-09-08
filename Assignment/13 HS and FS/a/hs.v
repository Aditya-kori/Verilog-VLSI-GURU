module hs(a,b,diff,borrow);
input a,b;
output diff,borrow;
assign diff=a^b;
assign borrow=(~a)&b;
endmodule

//# a=0 b=0 diff=0 borrow=0
//# a=0 b=1 diff=1 borrow=1
//# a=0 b=1 diff=1 borrow=1
//# a=1 b=1 diff=0 borrow=0
//# a=0 b=1 diff=1 borrow=1
//# a=0 b=1 diff=1 borrow=1
//# a=0 b=1 diff=1 borrow=1
//# a=1 b=0 diff=1 borrow=0
