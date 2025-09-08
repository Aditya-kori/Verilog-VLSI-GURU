module mux81(s,i,y);
input [2:0]s;
input [7:0]i;
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

//# s=2 i=00000001 y=0
//# s=5 i=00111101 y=1
//# s=4 i=10110010 y=1
//# s=4 i=00010101 y=1
//# s=2 i=00110001 y=0
//# s=6 i=10011001 y=0
//# s=4 i=00010101 y=1
//# s=6 i=10100110 y=0
