module adder(p,q,r);
input [31:0] q,p;
output reg[32:0] r;
function reg[32:0] sum(input integer unsigned a,b);
sum=a+b;
endfunction
always@(*) begin
r=sum(p,q);
end
endmodule
