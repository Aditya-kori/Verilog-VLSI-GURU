module v_v;
reg [3:-5]a;
reg [7:2]b;
initial begin
b=9'd121;
a=b;
$display("a=%b, b=%b",a,b);
end
endmodule

//# a=000111001, b=111001
//Since the a is greater than b, the values of b is appended with 0 and copied in a;
