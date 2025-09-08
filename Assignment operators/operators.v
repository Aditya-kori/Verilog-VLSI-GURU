module arithmetic;
reg[16:0]a,b;
integer c;
initial begin
a=45; b=23;
c=a+b;
$display("%0d+%0d=%0d",a,b,c);
c=a-b;
$display("%0d-%0d=%0d",a,b,c);
c=a*b;
$display("%0d*%0d=%0d",a,b,c);
c=a/b;
$display("%0d/%0d=%0d",a,b,c);
c=a**b;
$display("%0d**%0d=%0d",a,b,c);
c=a%b;
$display("mod(%0d,%0d)=%0d",a,b,c);
end
endmodule

module logical;
reg[16:0]a,b;
reg c;
initial begin
a=25;b=0;
c=a&&b;
$display("%0b&&%0b=%0b",a,b,c);
c=a||b;
$display("%0b||%0b=%0b",a,b,c);
end
endmodule

module relational;
reg[16:0]a,b;
reg c;
initial begin
a=45;b=20;
c=a<=b;
$display("%0d<=%0d=%0b",a,b,c);
c=a>=b;
$display("%0d>=%0d=%0b",a,b,c);
c=a>b;
$display("%0d>%0d=%0b",a,b,c);
c=a<b;
$display("%0d<%0d=%0b",a,b,c);
c=a==b;
$display("%0d==%0d=%0b",a,b,c);
end
endmodule

module concatenation;
reg[4:0]a,b,c;
reg d;
reg[3:0]e,f,g,i;
integer h;
initial begin
{a,b,c,d,e,f,g,i}=32'h348AD8FE;
h={a,b,c,d,e,f,g,i};
$display("h=%b,\na=%b, b=%b, c=%b, d=%b, e=%b, f=%b, g=%b, i=%b",h,a,b,c,d,e,f,g,i);
end
endmodule

module bitwise;
reg [16:0]a,b;
reg [16:0]c;
initial begin
a=20; b=42;
c=a&b;
$display("%0b&%0b=%0b",a,b,c);
c=a|b;
$display("%0b|%0b=%0b",a,b,c);
c=a^b;
$display("%0b^%0b=%0b",a,b,c);
c=~(a^b);
$display("~(%0b^%0b)=%0b",a,b,c);
c=~(a&b);
$display("~(%0b&%0b)=%0b",a,b,c);
c=a~^b;
$display("%0b~^%0b=%0b",a,b,c);
end
endmodule

module unary;
reg [16:0]a;
reg c;
initial begin
a=34;
c=&a;
$display("&%0b=%0b",a,c);
c=|a;
$display("|%0b=%0b",a,c);
c=^a;
$display("^%0b=%0b",a,c);
c=~^a;
$display("~^%0b=%0b",a,c);
end
endmodule

module shift;
reg [15:0]a,c;
initial begin
a=101;
c=a>>5;
$display("%0b>>5=%b",a,c);
c=a<<5;
$display("%0b<<5=%b",a,c);
end
endmodule

module even_cond;
reg [3:0]a;
reg y;
initial begin
a=$random;
y=(a%2==0)? 1'b1:1'b0;
if(y==1) $display("%d is even",a);
else $display("%d is odd",a);
end
endmodule

module case_equality;
reg[7:0]a,b;
reg c,d;
initial begin
a=30; b='dx;
c=(a==b);
$display("%b==%b=%0b",a,b,c);
c=(a===b);
$display("%0b===%0b=%0b",a,b,c);
end 
endmodule

module replication;
reg[3:0] a;
integer b;
initial begin
a=4'b1010;
b={4{a}};
$display("a=%b, b=%b",a,b);
end
endmodule

//# 45+23=68
//# 45-23=22
//# 45*23=1035
//# 45/23=1
//# 45**23=2011001989
//# mod(45,23)=22

//# 11001&&0=0
//# 11001||0=1

//# 45<=20=0
//# 45>=20=1
//# 45>20=1
//# 45<20=0
//# 45==20=0
//32'h348AD8FE
//# h=0011_0100_1000_1010_1101_1000_1111_1110,
//# a=00110, b=10010, c=00101, d=0, e=1101, f=1000, g=1111, i=1110

//# 10100&101010=0
//# 10100|101010=111110
//# 10100^101010=111110
//# ~(10100^101010)=11111111111000001
//# ~(10100&101010)=11111111111111111
//# 10100~^101010=11111111111000001

//# &100010=0 
//# |100010=1
//# ^100010=0
//# ~^100010=1

//# 1100101>>5=0000000000000011
//# 1100101<<5=0000110010100000

//#  4 is even

//# a=1010, b=00000000000000001010101010101010
