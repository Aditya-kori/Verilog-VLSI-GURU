`include "or_mux.v"
module or_gatetb;
reg a,b;
wire y;
or_gate dut(.*);
initial begin
repeat (8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b y=%b",a,b,y);
end
end
endmodule
