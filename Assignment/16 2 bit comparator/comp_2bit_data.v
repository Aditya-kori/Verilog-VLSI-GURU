module comp_2bit(a,b,y1,y2,y3);
input [1:0]a,b;
output y1,y2,y3;//y1=a>b | y2=a<b | y3=a=b
assign  y1=(a[1]&(~b[1]))|((~(a[1]^b[1]))&(a[0]&(~b[0])));
assign  y2=((~a[1])&b[1])|((~(a[1]^b[1]))&((~a[0])&b[0]));
assign y3=(~(a[1]^b[1]))&(~(a[0]^b[0]));
endmodule

