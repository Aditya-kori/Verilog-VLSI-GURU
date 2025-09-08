module ha(a,b,s,c);
input a,b;
output reg s,c;
assign s=a^b;
assign c=a&b;
endmodule
