module radix;
reg [15:0]a;
initial begin
a=16'o14xXZz;
$display("Octal a=%0o\n binary a=%0b\n ",a,a);
end
endmodule

//# Octal a=14xxzz
//#  binary a=1100xxxxxxzzzzzz
