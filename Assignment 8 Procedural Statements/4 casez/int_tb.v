`include "int.v"
module tb;
reg int2,int1,int0;
int dut(.*);
initial begin
repeat(10)begin
{int2,int1,int0}=$random;
#1;
$display("int2=%b, int1=%b int0=%b",int2,int1,int0);
end
end
endmodule

# interupt choosen=int2
# int2=1, int1=0 int0=0
# interupt choosen=int0
# int2=0, int1=0 int0=1
# int2=0, int1=0 int0=1
# interupt choosen=int1
# int2=0, int1=1 int0=1
# interupt choosen=int2
# int2=1, int1=0 int0=1
# int2=1, int1=0 int0=1
# int2=1, int1=0 int0=1
# interupt choosen=int1
# int2=0, int1=1 int0=0
# interupt choosen=int0
# int2=0, int1=0 int0=1
# interupt choosen=int2
# int2=1, int1=0 int0=1
