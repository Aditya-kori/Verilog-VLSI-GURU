module vectors;
wire valid;
reg addr;
reg [35:3]wdata;
wire [69:6]rdata;
wand [7:0]write_data;
initial begin
$display("valid=%b, addr=%b, wdata=%b, rdata=%b, write_data=%b",valid,addr,wdata,rdata,write_data);
end
endmodule

//# valid=z, 
//addr=x, 
//wdata=x xxxx xxxx xxxx xxxx xxxx xxxx xxxx xxxx,
//rdata=zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz zzzz, 
//write_data=zzzz zzzz
