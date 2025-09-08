module mux4_1(s,i,y);
input [1:0]s;
input [3:0]i;
output reg y;
always@(*) begin
case(s)
2'd0:y=i[0];
2'd1:y=i[1];
2'd2:y=i[2];
2'd3:y=i[3];
endcase
end
endmodule

//# s=10 i=0100 y=1
//# s=00 i=0001 y=1
//# s=00 i=1001 y=1
//# s=10 i=0011 y=0
//# s=00 i=1101 y=1
//# s=00 i=1101 y=1
//# s=10 i=0101 y=1
//# s=01 i=0010 y=1
//# s=00 i=0001 y=1
//# s=00 i=1101 y=1
