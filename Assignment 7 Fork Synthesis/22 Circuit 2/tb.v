`include "circuit.v"
module tb;
reg clk,rst,a,b;
wire y;
circuit dut(.*);
always #5 clk=~clk;
initial begin
clk=0;
rst=1;
repeat(2)@(posedge clk);
rst=0;
repeat(10)begin
{a,b}=$random;
#6;
$display("a=%b, b=%b, y=%b",a,b,y);
end
#100;
$finish;
end
endmodule
