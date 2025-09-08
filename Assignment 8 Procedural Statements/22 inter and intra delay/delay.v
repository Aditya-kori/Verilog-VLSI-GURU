module delay;
integer a,b,c;
reg [3:0]z;
always@(a) begin
b= #10 a;
c= #5 b;
end
initial begin
repeat(30) begin
{a,z}=$random;
#z;
$display("a=%d, b=%d, c=%d",a,b,c);
end
end
endmodule
