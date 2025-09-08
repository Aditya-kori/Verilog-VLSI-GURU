`include "mux81_21.v"
module mux81_tb;
reg s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7;
wire y;
integer seed=123;
mux81 dut(.*);
initial begin
repeat (8) begin
{s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7}=$random(seed);
#1;
$display("s2=%b s1=%b s0=%b i0=%b i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b y=%b",s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7,y);
end
end
endmodule


