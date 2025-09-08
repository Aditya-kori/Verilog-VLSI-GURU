module radix;
reg [15:0]a;
initial begin
a=16'o45632;
$display("Octal a=%0o\n Hexadecimal a=%0h\n ",a,a);
end
endmodule

//# Octal a=45632
//#  Hexadecimal a=4b9a
