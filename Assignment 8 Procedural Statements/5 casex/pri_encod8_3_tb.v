`include "pri_encod8_3.v"
module tb;
reg [7:0]i;
wire [2:0]y;
encode dut(.*);
initial begin
repeat(10)begin
i=$random;
#1;
$display("i=%b, y=%b",i,y);
end
end
endmodule

//# i=00100100, y=101
//# i=10000001, y=111
//# i=00001001, y=011
//# i=01100011, y=110
//# i=00001101, y=011
//# i=10001101, y=111
//# i=01100101, y=110
//# i=00010010, y=100
//# i=00000001, y=000
//# i=00001101, y=011
