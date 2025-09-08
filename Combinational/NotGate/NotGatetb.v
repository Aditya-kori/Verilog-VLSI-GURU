`include "NotGate.v"
module NotGatetb;
reg a;
wire y;
NotGate dut(a,y);
initial begin
a=0;
#1;
$display ("a=%b y=%b",a,y);
a=1;
#1;
$display ("a=%b y=%b",a,y);
end
endmodule
