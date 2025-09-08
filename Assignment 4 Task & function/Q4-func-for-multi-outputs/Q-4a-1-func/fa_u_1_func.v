module fa_u_1_func(a,b,cin,sum,carry);
input b,a;
input cin;
integer i;
output reg sum;
output reg carry;
function reg[1:0] fa(input a,b,c);
fa=a+b+c;
endfunction
always@(*) begin
{carry,sum}=fa(a,b,cin);
end
endmodule

//# a=1,b=0,cin=0,sum=1,carry=0
//# a=0,b=0,cin=1,sum=1,carry=0
//# a=0,b=0,cin=1,sum=1,carry=0
//# a=0,b=1,cin=1,sum=0,carry=1
//# a=1,b=0,cin=1,sum=0,carry=1
//# a=1,b=0,cin=1,sum=0,carry=1
//# a=1,b=0,cin=1,sum=0,carry=1
//# a=0,b=1,cin=0,sum=1,carry=0
//# a=0,b=0,cin=1,sum=1,carry=0
//
