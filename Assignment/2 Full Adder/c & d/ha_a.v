module ha(a,b,s,c);
input [7:0]a,b;
output [7:0]s,c;
assign s=a^b;
assign c=a&b;
endmodule
