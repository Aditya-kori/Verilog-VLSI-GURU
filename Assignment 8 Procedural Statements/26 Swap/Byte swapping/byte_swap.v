module tb;
reg [7:0]a;
reg [7:0]b;
initial begin
a="a";
b="b";
$display("Before swap a=%s, b=%s",a,b);
a<=b;
b<=a;
#1;
$display("After swap a=%s b=%s",a,b);

end
endmodule

//# Before swap a= a, b=b
//# After swap a= b b=a
