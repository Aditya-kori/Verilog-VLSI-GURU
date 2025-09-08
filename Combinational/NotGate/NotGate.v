module NotGate(a,y);
input a;
output reg y;
always@(*) begin
y=~a;
end
endmodule
