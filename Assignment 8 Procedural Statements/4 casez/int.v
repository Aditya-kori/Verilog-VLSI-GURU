module int(int2,int1,int0);
input int2,int1,int0;
always@(*)begin
casez({int2,int1,int0}) 
3'b1??:$display("interupt choosen=int2");
3'b01?:$display("interupt choosen=int1");
3'b001:$display("interupt choosen=int0");
endcase
end
endmodule
