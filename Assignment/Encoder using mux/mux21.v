module mux21(s,i,y);
input s;
input [1:0]i;
output y;
assign y=s?i[1]:i[0];
endmodule
