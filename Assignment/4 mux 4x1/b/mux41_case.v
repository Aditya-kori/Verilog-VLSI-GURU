module mux41(s,i,y);
input [1:0]s;
input i[3:0];
output reg y;
always @(*) begin
	case (s) 
	2'd0:y=i[0];
	2'd1:y=i[1];
	2'd2:y=i[2];
	2'd3:y=i[3];
	default:y=0;
	endcase
	end
endmodule

//# s=10 i0=0 i1=1 i2=0 i3=0 y=0
//# s=00 i0=0 i1=0 i2=0 i3=1 y=0
//# s=00 i0=1 i1=0 i2=0 i3=1 y=1
//# s=10 i0=0 i1=0 i2=1 i3=1 y=1
//# s=00 i0=1 i1=1 i2=0 i3=1 y=1
//# s=00 i0=1 i1=1 i2=0 i3=1 y=1
//# s=10 i0=0 i1=1 i2=0 i3=1 y=0
//# s=01 i0=0 i1=0 i2=1 i3=0 y=0
//# s=11 i0=0 i1=1 i2=0 i3=1 y=1

