module circuit(a,b,c,rst,clk,y,w);
input a,b,c,rst,clk;
output reg y,w;
wire d1,d2;
assign d1=a&b;
assign d2=~c;
always@(posedge clk ) begin
if(rst==1)	begin 
			y=0;w=0; 
			end

else 		begin 	
			y=d1;w=d2; 	
			end
end
endmodule
