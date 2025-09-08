module tb;
reg [65:0]a;
integer i;
initial begin
for (i=0;i<65	;i=i+1)
begin
	a="aditya";
	$display("a=%0s",a);
end 
end
endmodule
