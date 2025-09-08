module fa_4b(a,b,cin,s,cout);
input [3:0]b,a;
input cin;
integer i;
output reg[3:0]s;
output reg cout;
reg [4:0]c_t;
function reg sum(input a,b,c);
sum=a^b^c;
endfunction
function reg carry(input a,b,c);
carry=(a&b)|(b&c)|(a&c);
endfunction
always@(*) begin
c_t[0]=cin;
for(i=0;i<4;i=i+1) begin
s[i]=sum(a[i],b[i],c_t[i]);
c_t[i+1]=carry(a[i],b[i],c_t[i]);
end
cout=c_t[4];
end
endmodule
/*
# a=1001,b=0010,cin=0,sum=1011,carry=0
# a=0100,b=0000,cin=1,sum=0101,carry=0
# a=0000,b=0100,cin=1,sum=0101,carry=0
# a=0011,b=0001,cin=1,sum=0101,carry=0
# a=1000,b=0110,cin=1,sum=1111,carry=0
# a=1100,b=0110,cin=1,sum=0011,carry=1
# a=0011,b=0010,cin=1,sum=0110,carry=0
# a=0000,b=1001,cin=0,sum=1001,carry=0
# a=1000,b=0000,cin=1,sum=1001,carry=0
# a=1000,b=0110,cin=1,sum=1111,carry=0
# a=1011,b=1011,cin=0,sum=0110,carry=1
# a=1001,b=1110,cin=1,sum=1000,carry=1
# a=1111,b=0110,cin=1,sum=0110,carry=1
# a=1100,b=0110,cin=0,sum=0010,carry=1
# a=1111,b=1100,cin=1,sum=1100,carry=1
# a=0110,b=0011,cin=0,sum=1001,carry=0
# a=0110,b=0010,cin=1,sum=1001,carry=0
# a=0101,b=0101,cin=0,sum=1010,carry=0
*/



