module Mux2_1(s,I,y);
input s;
input I[0:1];
output reg y;
always@(*) begin
case(s)
1'b0:y=I[0];
1'b1:y=I[1];
default:y=0;
endcase
//y=I[s];
end
endmodule
