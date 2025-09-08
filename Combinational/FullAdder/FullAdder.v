module FullAdder(a,b,c,S,C);
input a,b,c;
output reg S,C;
always@(*) begin
S=a^b^c;
C=(a&b)|(b&c)|(c&b);
end
endmodule

