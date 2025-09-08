module v_v;
reg [3:-2]a;
reg [7:0]b;
initial begin
b=5'd43;
a=b;
$display("a=%b, b=%b",a,b);
end
endmodule

//# a=001011, b=00001011
// Since the size of a is less than b, therefore the msb bits of truncated
