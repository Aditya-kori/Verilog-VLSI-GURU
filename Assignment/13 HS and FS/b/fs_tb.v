`include "fs.v"
module fs_tb;
reg a,b;
reg bin;
wire diff;
wire bout;
fs dut(.*);
initial begin
repeat (8) begin
{a,b,bin}=$random;
#1;
$display("a=%b b=%b bin=%b diff=%b bout=%b",a,b,bin,diff,bout);
end
end
endmodule
