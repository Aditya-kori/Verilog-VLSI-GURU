`include "ha_a.v"
module ha_tb;
reg [7:0]a,b;
wire [7:0]s,c;
ha dut(a,b,s,c);
initial begin
repeat (8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b s=%b c=%b",a,b,s,c);
end
end
endmodule
