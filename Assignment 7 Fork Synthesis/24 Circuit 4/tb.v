`include "circuit.v"
module tb;
reg clk1,clk2,rst,a,b;
wire z;
circuit dut(.*);
always #5 clk1=~clk1;
always #3 clk2=~clk2;
initial begin
clk1=0;
clk2=0;
rst=1;
repeat(2)@(posedge clk1);
rst=0;
repeat(10) begin
{a,b}=$random;
#7;
$display("a=%b b=%b z=%b",a,b,z);
end
#100;
$finish;
end
endmodule

