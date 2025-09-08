/* 3.ALU implementation using Function 
a. Arithmetic operations 
b. Add, Subtract, Multiply, Division, Modulo, to the power, left shift, right shift 
c. Before coding function, user needs to list down following 
d. Name of the function(alu), return data type of function, arguments of the function. 
e. Function arguments? 
i. in1, in2: vectors of user decided size 
ii. oper: Type of ALU operation 
iii. y: ALU output //return type of function, it can't be declared in arguments. 
f. Implement 'alu' function for above arguments. Below line is called function prototype. 
i. function reg [31:0] alu (input [7:0] in1, input [7:0] in2, input [3:0] oper); 
g. Give parameter names to each operation we want to do 
i. Implement ALU using a function with case statement 
ii. Implement ALU using a function with if else statement*/

module alu;
parameter ADD=1,SUB=2,MUL=3,DIV=4,EXP=5,MOD=6,LSHIFT=7,RSHIFT=8;
reg [7:0]a,b;
reg [31:0]y;
reg [2:0]op;//see parameters for the operation

function reg [31:0] alu(input [7:0]in1,in2,input [2:0]oper);begin
case(oper)
3'd0 : alu=in1+in2;
3'd1 : alu=in1-in2;
3'd2 : alu=in1*in2;
3'd3 : alu=in1/in2;
3'd4 : alu=in1**2;
3'd5 : alu=in1%in2;
3'd6 : alu=in1<<2;
3'd7 : alu=in1>>2;
default :alu=8'd0;
endcase
end
endfunction


initial begin
repeat(15) begin
{a,b,op}=$random;
#2;
y=alu(a,b,op);
$display("a=%d  b=%d  operation=%d  y=%d",a,b,op,y);
end
end
endmodule

/*ADD=0,SUB=1,MUL=2,DIV=3,EXP=4,MOD=5,LSHIFT=6,RSHIFT=7;
# a= 43  b=208  operation=1  y=251
# a=154  b=53  operation=1   y=101
# a= 10  b=204  operation=3  y=         0 <<
# a= 47  b= 97  operation=5  y=        47 <<
# a=243  b= 49  operation=5  y=        47 <<
# a= 80  b=140  operation=5  y=        80 <<
# a=234  b= 66  operation=2  y=     15444 <<
# a=124  b= 96  operation=1  y=        28 <<
# a=249  b=161  operation=5  y=        88 <<
# a=126  b= 46  operation=6  y=       504 <<
# a=185  b=167  operation=5  y=        18 <<
# a=138  b=253  operation=5  y=       138 <<
# a=190  b=241  operation=4  y=     36100 <<
# a=189  b= 63  operation=1  y=       126 << 

# a=166  b=164  operation=4  y=164
# a= 43  b=208  operation=1  y= 91
# a=154  b=193  operation=1  y=217
# a= 10  b=204  operation=3  y=  0
# a= 47  b= 97  operation=5  y= 47
# a=243  b= 49  operation=5  y= 47
# a= 80  b=140  operation=5  y= 80
# a=234  b= 66  operation=2  y= 84
# a=124  b= 96  operation=1  y= 28
# a=249  b=161  operation=5  y= 88
# a=126  b= 46  operation=6  y=248
# a=185  b=167  operation=5  y= 18
# a=138  b=253  operation=5  y=138
# a=190  b=241  operation=4  y=  4
# a=189  b= 63  operation=1  y=126*/



