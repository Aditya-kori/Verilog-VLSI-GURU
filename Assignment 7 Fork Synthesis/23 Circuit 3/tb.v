`include "circuit.v"
module tb;
reg a,b,rst,clk;
wire z;
always #5 clk=~clk;
circuit dut(.*);
initial begin
clk=0;
rst=1;
repeat(2)@(posedge clk);
rst=0;
repeat(10)begin
{a,b}=$random;
#6;
$display("a=%b b=%b z=%b",a,b,z);
end
#100;
$finish;
end
endmodule
