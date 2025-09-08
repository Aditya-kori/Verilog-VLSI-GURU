module radix;
reg signed [15:0]a;
initial begin
a=-16'd743;
$display("Octal a=%0o\n Hexadecimal a=%0h\n Decimal a=%d\n Binary a=%b\n",a,a,a,a);
end
endmodule

//# Octal a=176431
//#  Hexadecimal a=fd19
//#  Decimal a=  -743
//#  Binary a=1111110100011001
