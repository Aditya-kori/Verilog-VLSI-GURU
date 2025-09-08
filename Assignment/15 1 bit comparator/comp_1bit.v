module comparator(a,b,y1,y2,y3);
input a,b;
output reg y1,y2,y3;//y1=a>b | y2=a<b | y3=a=b
always@(*) begin
y1=0;y2=0;y3=0;
if (a>b) y1=1;
else if(a<b) y2=1;
else y3=1;
end
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
