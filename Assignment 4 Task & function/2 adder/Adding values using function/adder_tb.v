`include "adder_f.v"
module tb;
reg [31:0] p,q;
wire [32:0] r;
adder dut(.*);
initial begin
repeat(10)begin
p=$urandom_range(100,200);
q=$urandom_range(100,200);
#1;
$display("p=%0d q=%0d r=%0d",p,q,r);
end
end
endmodule

//# p=102 q=188 r=290
//# p=102 q=167 r=269
//# p=145 q=182 r=327
//# p=117 q=127 r=244
//# p=168 q=130 r=298
//# p=144 q=106 r=250
//# p=174 q=120 r=294
//# p=191 q=101 r=292
//# p=147 q=197 r=344
//# p=123 q=200 r=323
