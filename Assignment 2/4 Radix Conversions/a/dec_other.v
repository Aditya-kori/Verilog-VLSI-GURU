module radix;
reg [15:0]a;
initial begin
a=16'd4567;
$display("Octal a=%0o\n Hexadecimal a=%0h\n Decimal a=%d\n Binary a=%b\n",a,a,a,a);
end
endmodule

//# Octal a=10727
//#  Hexadecimal a=11d7
//#  Decimal a= 4567
//#  Binary a=0001000111010111
