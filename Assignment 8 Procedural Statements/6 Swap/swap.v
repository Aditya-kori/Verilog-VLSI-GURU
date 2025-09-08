module tb;
integer a,b,temp;
initial begin
a=10;
b=20;
$display("Before swap a=%0d b=%0d",a,b);
temp=a;
a=b;
b=temp;
$display("After swap a=%0d b=%0d",a,b);
end
endmodule
//# Before swap a=10 b=20
//# After swap a=20 b=10
