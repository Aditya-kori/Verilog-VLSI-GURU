module tb;
reg clk;
always #5 clk=~clk;
initial begin
clk=0;
#100;
$finish;
end
endmodule
