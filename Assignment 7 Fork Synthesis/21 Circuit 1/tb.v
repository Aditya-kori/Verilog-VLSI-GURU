`include "circuit.v"
module tb;
reg a,b,c,clk,rst;
wire y,w;
circuit dut(.*);
always #5 clk=~clk;
initial begin
clk=0;
rst=1;
a=0;b=1;c=0;
repeat(2)@(posedge clk);
rst=0;
repeat(20)begin
{a,b,c}=$random;
#6;
$display("%t a=%d, b=%d, c=%d, y=%d, w=%d",$time,a,b,c,y,w);
end
end
initial begin
#200;
$finish;
end
endmodule
