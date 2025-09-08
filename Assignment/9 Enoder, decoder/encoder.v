module encode(i,a,b);
input [3:0]i;
output a,b;
assign a=i[3]|i[2];
assign b=i[1]|i[3];
endmodule
