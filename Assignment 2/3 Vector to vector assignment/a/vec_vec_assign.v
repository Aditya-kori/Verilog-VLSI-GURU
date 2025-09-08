module v_v;
reg [3:-2]a;
reg [7:2]b;
initial begin
a=6'd32;
b=a;
$display("a=%b, b=%b",a,b);
end
endmodule

//# a=100000, b=100000
//Since LHS=RHS, all the bits of a are copied to b
