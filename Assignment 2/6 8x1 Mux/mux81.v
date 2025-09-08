module mux81(sel,i,y);
input [2:0]sel;
input [15:0]i;
output reg [1:0]y;
always@(*) begin
if(sel==3'd0) y=i[1:0];
else if(sel==3'd1) y=i[3:2];
else if(sel==3'd2) y=i[5:4];
else if(sel==3'd3) y=i[7:6];
else if(sel==3'd4) y=i[9:8];
else if(sel==3'd5) y=i[11:10];
else if(sel==3'd6) y=i[13:11];
else y=i[15:14];
end
endmodule

//# sel=1 i0=01 i1=00 i2=00 i3=00 i4=10 i5=00 i6=10 i7=10 y=00
//# sel=1 i0=01 i1=11 i2=11 i3=00 i4=01 i5=01 i6=01 i7=11 y=11
//# sel=4 i0=10 i1=00 i2=11 i3=10 i4=00 i5=11 i6=10 i7=11 y=00
//# sel=1 i0=01 i1=01 i2=01 i3=00 i4=00 i5=01 i6=10 i7=01 y=01
//# sel=0 i0=01 i1=00 i2=11 i3=00 i4=10 i5=00 i6=11 i7=10 y=01
//# sel=2 i0=01 i1=10 i2=01 i3=10 i4=10 i5=01 i6=01 i7=11 y=01
//# sel=6 i0=01 i1=01 i2=01 i3=00 i4=00 i5=11 i6=11 i7=01 y=11
//# sel=1 i0=10 i1=01 i2=10 i3=10 i4=10 i5=11 i6=10 i7=00 y=01
