module tb;
	reg clk;
	initial begin
	clk=0;
	forever #5 clk=~clk;
	end
	always@(posedge clk) begin
	$display("%t Entry::1",$time);
	end
	always@(posedge clk) begin
	#15;
	$display("%t Entry::2",$time);
	end
initial begin
#100;
$finish;
end
endmodule

//#5 Entry::1
//#15 Entry::1
//#20 Entry::2
//#25 Entry::1
//#35 Entry::1
//#40 Entry::2
//#45 Entry::1
//#55 Entry::1
//#60 Entry::2
//#65 Entry::1
//#75 Entry::1
//#80 Entry::2
//#85 Entry::1
//#95 Entry::1
