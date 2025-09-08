module HalfAdder(a,b,s,c);
input a,b;
output reg s,c;
always@(*) begin
s=a^b;
c=a&b;
end
endmodule
