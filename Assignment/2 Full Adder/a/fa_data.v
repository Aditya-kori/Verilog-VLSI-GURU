module fa (a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
	assign sum=(a ^ b) ^ cin;
	assign cout=(a & b) | ( b & cin) | ( cin & a);
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

