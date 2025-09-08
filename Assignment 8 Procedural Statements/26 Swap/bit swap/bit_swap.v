module tb;
reg a;
reg b;
initial begin
a=1;
b=0;
$display("Before swap a=%b, b=%b",a,b);
a<=b;
b<=a;
#1;
$display("After swap a=%b b=%b",a,b);
end
endmodule

//# Before swap a=1, b=0
//# After swap a=0 b=1
