`include "full_add.v"
module tb;
reg a,b,c;
wire sum,cout;
integer fd;
full_add dut(.*);
initial begin
fd=$fopen("output.txt");
repeat(10)begin
{a,b,c}=$random;
#2;
$fmonitor(fd,"a=%d b=%d c=%d sum=%d, cout=%d",a,b,c,sum,cout);
end
$fclose(fd);
end
endmodule
