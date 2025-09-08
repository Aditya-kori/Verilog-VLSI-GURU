module ha(a,b,sum,carry);
input a,b;
output sum, carry;
	assign sum=a^b;
	assign carry=a&b;
endmodule


//# a=0 b=0 sum=0 carry=0
//# a=0 b=1 sum=1 carry=0
//# a=0 b=1 sum=1 carry=0
//# a=1 b=1 sum=0 carry=1
//# a=0 b=1 sum=1 carry=0
//# a=0 b=1 sum=1 carry=0
//# a=0 b=1 sum=1 carry=0
//# a=1 b=0 sum=1 carry=0
