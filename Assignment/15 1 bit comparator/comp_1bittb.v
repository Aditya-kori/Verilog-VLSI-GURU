`include "comp_1bit_gate.v"
//`include "comp_1bit_data.v"
//`include "comp_1bit.v"
module comp_1bittb;
reg a,b;
wire y1,y2,y3;
comparator dut(a,b,y1,y2,y3);
initial begin
repeat (8) begin
{a,b}=$random;
#1;
$display("a=%b b=%b (a>b)=%b (a<b)=%b (a=b)=%b",a,b,y1,y2,y3);
end
end
endmodule
