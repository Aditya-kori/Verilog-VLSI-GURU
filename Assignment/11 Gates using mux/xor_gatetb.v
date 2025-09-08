`include "xor_gate.v"
module xor_gatetb;
reg a,b;
wire y;
xor_gate dut(a,b,y);
initial begin
repeat (8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b y=%b",a,b,y);
end
end
endmodule
