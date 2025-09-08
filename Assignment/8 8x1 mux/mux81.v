module mux81(s,i,y);
input [2:0]s;
input i[7:0];
output reg y;
always@(*) begin
if(s==3'd0) y=i[0];
else if(s==3'd1) y=i[1];
else if(s==3'd2) y=i[2];
else if(s==3'd3) y=i[3];
else if(s==3'd4) y=i[4];
else if(s==3'd5) y=i[5];
else if(s==3'd6) y=i[6];
else y=i[7];
end
endmodule

//# s=2 i0=0 i1=0 i2=0 i3=0 i4=0 i5=0 i6=0 i7=1 y=0
//# s=5 i0=0 i1=0 i2=1 i3=1 i4=1 i5=1 i6=0 i7=1 y=1
//# s=4 i0=1 i1=0 i2=1 i3=1 i4=0 i5=0 i6=1 i7=0 y=0
//# s=4 i0=0 i1=0 i2=0 i3=1 i4=0 i5=1 i6=0 i7=1 y=0
//# s=2 i0=0 i1=0 i2=1 i3=1 i4=0 i5=0 i6=0 i7=1 y=1
//# s=6 i0=1 i1=0 i2=0 i3=1 i4=1 i5=0 i6=0 i7=1 y=0
//# s=4 i0=0 i1=0 i2=0 i3=1 i4=0 i5=1 i6=0 i7=1 y=0
//# s=6 i0=1 i1=0 i2=1 i3=0 i4=0 i5=1 i6=1 i7=0 y=1

