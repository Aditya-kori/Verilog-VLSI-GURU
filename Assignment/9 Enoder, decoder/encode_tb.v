`include "encoder.v"
module encode_tb;
reg [3:0]i;
wire a,b;
encode dut(i,a,b);
initial begin
i[3]=0;i[2]=0;i[1]=0;i[0]=0;
#10;
$display("i=%b a=%b b=%b",i,a,b);
i[3]=1;i[2]=0;i[1]=0;i[0]=0;
$display("i=%b a=%b b=%b",i,a,b);#10;
i[3]=0;i[2]=0;i[1]=1;i[0]=0;
#10;
$display("i=%b a=%b b=%b",i,a,b);
i[3]=0;i[2]=1;i[1]=0;i[0]=0;
#10;
$display("i=%b a=%b b=%b",i,a,b);
i[3]=1;i[2]=0;i[1]=0;i[0]=0;
#1;
$display("i=%b a=%b b=%b",i,a,b);#10;
end
endmodule
