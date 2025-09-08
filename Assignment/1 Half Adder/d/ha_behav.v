module ha(a,b,sum,carry);
input a,b;
output reg sum,carry;
	always@(a or b) begin
	sum=a^b;
	carry=a&b;
	end
endmodule


//# a=0 b=0 sum=0 carry=0
//# a=0 b=1 sum=1 carry=0
//# a=0 b=1 sum=1 carry=0
//# a=1 b=1 sum=0 carry=1
//# a=0 b=1 sum=1 carry=0
//# a=0 b=1 sum=1 carry=0
//# a=0 b=1 sum=1 carry=0
//# a=1 b=0 sum=1 carry=0

