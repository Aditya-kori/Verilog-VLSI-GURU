`include "ha_a.v"
module fa(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire s1,c1,c2;
	ha g1(a,b,s1,c1);
	ha g2(s1,cin,sum,c2);
	or g3(cout,c1,c2);
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

