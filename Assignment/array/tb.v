module tb;
reg [19:0]a;
initial begin
	a=20'h12345;
	a={<<4{a}};	
	$display("a=%h",a);
end
endmodule
