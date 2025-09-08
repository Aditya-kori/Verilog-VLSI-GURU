module mux(s,i0,i1,y);
input i0,i1;
input s;
output y;
assign y=s?i1:i0;
endmodule 
