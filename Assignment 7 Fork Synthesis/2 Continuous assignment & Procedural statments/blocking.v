module tb;
	integer a,b;
	initial begin
	a<=20;
	b<=100;
	$display("a=%0d,b=%0d",a,b);
	#1;
	$display("a=%0d,b=%0d",a,b);
	end
endmodule
//# a=x,b=x
//# a=20,b=100
