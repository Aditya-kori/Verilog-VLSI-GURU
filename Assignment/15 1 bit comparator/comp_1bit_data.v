module comparator(a,b,y1,y2,y3);
input a,b;
output y1,y2,y3;//y1=a>b  | y2=a<b  | y3=a<b
assign y1=a&(~b);
assign y2=(~a)&b;
assign y3=((~a)&(~b))|(a&b);
endmodule

//# a=0 b=0 (a>b)=0 (a<b)=0 (a=b)=1
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=1 b=1 (a>b)=0 (a<b)=0 (a=b)=1
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=0 b=1 (a>b)=0 (a<b)=1 (a=b)=0
//# a=1 b=0 (a>b)=1 (a<b)=0 (a=b)=0
//
