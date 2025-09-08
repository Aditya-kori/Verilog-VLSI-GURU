module mux41(en,s1,s0,i0,i1,i2,i3,y);
input en,s1,s0,i0,i1,i2,i3;
output y;
assign y=en?(s1?(s0?i3:i2):(s0?i1:i0)):1'b0;
endmodule
