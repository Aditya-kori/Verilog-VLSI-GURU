module tb;
integer a,b;
initial begin
a=10; b=20;
$display("Before swap a=%0d b=%0d",a,b);
a<=b;
b<=a;
#1;
$display("After swap a=%0d b=%0d",a,b);
end
endmodule
//# Before swap a=10 b=20
//# After swap a=20 b=10
