module mux32two(i0,i1,sel,out);
input [31:0]i0,i1;
input sel;
output [31:0]out;
endmodule

module mux32three(i0,i1,i2,sel,out);
input [31:0]i0,i1,i2;
input sel;
output [31:0]out;
endmodule

module add32(i0,i1,sum);
input [31:0]i0,i1;
output [31:0]sum;
endmodule

module sub32(i0,i1,diff);
input [31:0]i0,i1;
output [31:0]diff;
endmodule

module mul16(i0,i1,prod);
input [15:0]i0,i1;
output [31:0]prod;
endmodule

module alu(A,B,F,R);
input [31:0]A,B;
input [2:0]F;
output [31:0]R;
	mux32two g1(.i0(B),.i1(32'd1),.sel(F[0]),.out(n1));
	mux32two g2(.i0(B),.i1(32'd1),.sel(F[0]),.out(n2));
	add32 g3(.i0(A),.i1(n1),.sum(n3));
	sub32 g4(.i0(A),.i1(n2),.diff(n4));
	mul16 g5(.i0(A),.i1(B),.prod(n5));
	mux32three g6(.i0(n3),.i1(n4),.i2(n5),.sel(F[2:1]),.out(R));
endmodule
