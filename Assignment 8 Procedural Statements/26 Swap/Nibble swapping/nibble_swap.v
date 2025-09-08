module tb;
reg [3:0]a;
reg [3:0]b;
initial begin
a=1011;
b=1101;
$display("Before swap a=%d, b=%d",a,b);
a<=b;
b<=a;
#1;
$display("After swap a=%d b=%d",a,b);
end
endmodule
//# Before swap a= 3, b=13
//# After swap a=13 b= 3
