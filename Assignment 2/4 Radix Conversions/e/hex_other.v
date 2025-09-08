module radix;
reg [15:0]a;
initial begin
a=16'hCxDz;
$display("Octal a=%0o\n Hexadecimal a=%0h\n Decimal a=%d\n Binary a=%b\n",a,a,a,a);
end
endmodule
//# Octal a=14xXZz
//#  Hexadecimal a=cxdz
//#  Decimal a=    X
//#  Binary a=1100xxxx1101zzzz
