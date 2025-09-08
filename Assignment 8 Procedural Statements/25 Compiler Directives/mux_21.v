module mux21(s,i,y);
input s;
input [1:0]i;
`ifdef BEHAV output reg y;
`else output y;
`endif

`ifdef BEHAV
always@(*) begin
y=s?i[1]:i[0];
end
`elsif DATAFLOW
assign y=s?i[1]:i[0];
`else 
wire n1,n2;
and g1(n1,i[0],~s);
and g2(n2,i[1],s);
or g3(y,n1,n2);
endmodule
