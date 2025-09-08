module tb;
reg [19:0]a;
initial begin
	a=20'h12345;
	a={8<{a}};	
	$display("a=%0d a=%b",a,a);
end
endmodule
