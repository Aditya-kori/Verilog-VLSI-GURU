module fa_5b(a,b,cin,s,cout);
input [4:0]a,b;
input cin;
output reg [4:0]s;
output reg cout;
integer i;
reg [5:0]c_t;
function reg sum(input reg a,b,cin);
sum = a^b^cin;
endfunction
function reg carry(input reg a,b,cin);
carry = a&b | b&cin | cin&a;
endfunction
always@(*) begin
c_t = 0;
c_t[0]=cin;
for (i=0;i<5;i=i+1) begin
s[i]=sum(a[i],b[i],c_t[i]);
c_t[i+1]=carry(a[i],b[i],c_t[i]);
end
cout=c_t[5];
end
endmodule

