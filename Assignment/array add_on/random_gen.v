module random;
real a;
integer seed=12345;
initial begin
repeat(100) begin
a=$random(seed)/214748364.0;
if (a<0) begin
	a=-a;
	if (a < 9.7 && a>3.3) $display("a=%.1f",a);
	end
end
end
endmodule



//# a=6.0
//# a=5.2
//# a=5.1
//# a=8.3
//# a=7.2
//# a=3.4
//# a=3.5
//# a=4.5
//# a=6.7
//# a=3.9
//# a=3.6
//# a=3.9
//# a=4.9
//# a=7.7
//# a=8.0
//# a=5.3
//# a=9.5
//# a=5.7
//# a=4.6
//# a=9.0
//# a=7.3
//# a=7.5
//# a=6.9
//# a=5.2
//# a=4.1
//# a=8.9
//# a=6.8
//# a=6.3
//# a=5.8
//# a=5.0
