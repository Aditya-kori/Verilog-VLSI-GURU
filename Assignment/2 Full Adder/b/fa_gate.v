module fa(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire ab,bc,ac;
	xor g1(sum,a,b,cin);
	and g2(ab,a,b);
	and g3(bc,b,cin);
	and g4(ac,a,cin);
	or g5(cout,ab,bc,ac);
endmodule


//# a=1 b=0 cin=0 sum=1 cout=0
//# a=0 b=0 cin=1 sum=1 cout=0
//# a=0 b=0 cin=1 sum=1 cout=0
//# a=0 b=1 cin=1 sum=0 cout=1
//# a=1 b=0 cin=1 sum=0 cout=1
//# a=1 b=0 cin=1 sum=0 cout=1
//# a=1 b=0 cin=1 sum=0 cout=1
//# a=0 b=1 cin=0 sum=1 cout=0
//# a=0 b=0 cin=0 sum=0 cout=0

