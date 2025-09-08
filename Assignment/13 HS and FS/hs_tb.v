`include "hs.v"
module hs_tb;
reg a,b;
wire diff,borrow;
hs dut(.*);
initial begin
repeat (8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b diff=%b borrow=%b",a,b,diff,borrow);
end
end
endmodule

