module radix;
reg [15:0]a;
initial begin
a=16'h7654;
$display("Octal a=%0o\n Hexadecimal a=%0h\n Decimal a=%d\n Binary a=%b\n",a,a,a,a);
end
endmodule
//# Octal a=73124
//#  Hexadecimal a=7654
//#  Decimal a=30292
//#  Binary a=0111011001010100
