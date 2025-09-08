module mux(s,i0,i1,y);
	input s,i0,i1;
	output y;
	assign y=s?i1:i0;
endmodule
