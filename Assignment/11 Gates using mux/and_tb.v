`include "and_mux.v"
module and_tb;
reg a,b;
wire y;
and_a dut(.*);
initial begin
{a,b}=$random;
#1;
$display("a=%b b=%b y=%b",a,b,y);
end
endmodule
