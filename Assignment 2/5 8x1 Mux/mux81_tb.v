`include "mux81.v"
module mux81_tb;
reg [2:0]s;
reg [7:0]i;
wire y;
integer seed=123;
mux81 dut(.*);
initial begin
repeat (8) begin
{s,i}=$random(seed);
#1;
$display("s=%d i=%b y=%b",s,i,y);
end
end
endmodule


