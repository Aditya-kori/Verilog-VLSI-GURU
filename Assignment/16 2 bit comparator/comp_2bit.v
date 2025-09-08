module comp_2bit(a,b,y1,y2,y3);
input [1:0]a,b;
output reg y1,y2,y3;
always@(*) begin
y1=0;y2=0;y3=0;
if (a>b) y1=1;
else if (a<b) y2=1;
else y3=1;
end
endmodule

//# a=01 b=00 (a>b)=1 (a<b)=0 (a=b)=0
//# a=00 b=01 (a>b)=0 (a<b)=1 (a=b)=0
//# a=10 b=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a=00 b=11 (a>b)=0 (a<b)=1 (a=b)=0
//# a=11 b=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a=11 b=01 (a>b)=1 (a<b)=0 (a=b)=0
//# a=01 b=01 (a>b)=0 (a<b)=0 (a=b)=1
//# a=00 b=10 (a>b)=0 (a<b)=1 (a=b)=0
