module mux21(s,i0,i1,y);
	input s,i0,i1;
	output y;
	wire sb,n1,n2;
	not g1(sb,s);
	and g2(n1,sb,i0);
	and g3(n2,s,i1);
	or g4(y,n1,n2);
endmodule

