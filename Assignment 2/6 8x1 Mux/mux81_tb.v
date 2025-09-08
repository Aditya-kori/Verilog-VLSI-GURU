`include "mux81.v"
module mux81_tb;
reg [2:0]sel;
reg [15:0]i;
wire [1:0]y;
integer seed=123;
mux81 dut(.*);
initial begin
repeat (8) begin
{sel,i}=$random(seed);
#1;
$display("sel=%d i0=%b i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b y=%b",sel,i[1:0],i[3:2],i[5:4],i[7:6],i[9:8],i[11:10],i[13:12],i[15:14],y);
end
end
endmodule


