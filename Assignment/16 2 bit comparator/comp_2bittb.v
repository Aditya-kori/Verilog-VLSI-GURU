`include "comp_2bit_gate.v"
//`include "comp_2bit_data.v"
//`include "comp_2bit.v"
module comp_2bittb;
reg [1:0]a,b;
//reg a[1:0];
//reg b[1:0];
wire y1,y2,y3;
comp_2bit dut(.*);
initial begin
repeat (16) begin
//{a,b}=$random;
{a[1],a[0],b[1],b[0]}=$random;
#1;
//$display("a=%b b=%b (a>b)=%b (a<b)=%b (a=b)=%b",a,b,y1,y2,y3);
$display("a[1]a[0]=%b%b b[1]b[0]=%b%b (a>b)=%b (a<b)=%b (a=b)=%b",a[1],a[0],b[1],b[0],y1,y2,y3);
end
end
endmodule

//# a[1]a[0]=01 b[1]b[0]=00 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=00 b[1]b[0]=01 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=10 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=00 b[1]b[0]=11 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=01 b[1]b[0]=01 (a>b)=0 (a<b)=0 (a=b)=1
//# a[1]a[0]=00 b[1]b[0]=10 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=00 b[1]b[0]=01 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=01 b[1]b[0]=10 (a>b)=0 (a<b)=1 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=11 b[1]b[0]=00 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=10 b[1]b[0]=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a[1]a[0]=01 b[1]b[0]=10 (a>b)=0 (a<b)=1 (a=b)=0
