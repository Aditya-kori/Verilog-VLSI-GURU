`include "mux81.v"
module mux81_tb;
reg s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7;
wire y;
integer seed=123;
mux81 dut(s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7,y);
initial begin
repeat (8) begin
{s0,s1,s2,i0,i1,i2,i3,i4,i5,i6,i7}=$random(seed);
#1;
$display("s2=%b s1=%b s0=%b i0=%b i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b y=%b",s2,s1,s0,i0,i1,i2,i3,i4,i5,i6,i7,y);
end
end
endmodule

//# s2=1 s1=0 s0=1 i0=0 i1=0 i2=1 i3=0 i4=0 i5=1 i6=0 i7=0 y=1
//# s2=0 s1=1 s0=1 i0=1 i1=0 i2=0 i3=0 i4=0 i5=0 i6=0 i7=1 y=0
//# s2=0 s1=1 s0=1 i0=0 i1=0 i2=0 i3=0 i4=1 i5=0 i6=0 i7=1 y=0
//# s2=0 s1=1 s0=1 i0=0 i1=1 i2=1 i3=0 i4=0 i5=0 i6=1 i7=1 y=0
//# s2=1 s1=1 s0=0 i0=0 i1=0 i2=0 i3=0 i4=1 i5=1 i6=0 i7=1 y=0
//# s2=1 s1=0 s0=0 i0=1 i1=0 i2=0 i3=0 i4=1 i5=1 i6=0 i7=1 y=1
//# s2=0 s1=0 s0=1 i0=0 i1=1 i2=1 i3=0 i4=0 i5=1 i6=0 i7=1 y=1
//# s2=0 s1=1 s0=0 i0=0 i1=0 i2=0 i3=1 i4=0 i5=0 i6=1 i7=0 y=0
//After adding seed
//# s2=0 s1=1 s0=0 i0=0 i1=0 i2=0 i3=0 i4=0 i5=0 i6=0 i7=1 y=0
//# s2=1 s1=0 s0=1 i0=0 i1=0 i2=1 i3=1 i4=1 i5=1 i6=0 i7=1 y=1
//# s2=0 s1=0 s0=1 i0=1 i1=0 i2=1 i3=1 i4=0 i5=0 i6=1 i7=0 y=0
//# s2=0 s1=0 s0=1 i0=0 i1=0 i2=0 i3=1 i4=0 i5=1 i6=0 i7=1 y=0
//# s2=0 s1=1 s0=0 i0=0 i1=0 i2=1 i3=1 i4=0 i5=0 i6=0 i7=1 y=1
//# s2=0 s1=1 s0=1 i0=1 i1=0 i2=0 i3=1 i4=1 i5=0 i6=0 i7=1 y=1
//# s2=0 s1=0 s0=1 i0=0 i1=0 i2=0 i3=1 i4=0 i5=1 i6=0 i7=1 y=0
//# s2=0 s1=1 s0=1 i0=1 i1=0 i2=1 i3=0 i4=0 i5=1 i6=1 i7=0 y=0
