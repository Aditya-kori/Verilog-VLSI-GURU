module sample;
	initial begin
	$display("%t:Entry 1",$time);
	end
	initial begin
	#50;
	$display("%t:Entry 2",$time);
	#10;
	end
	initial begin
	fork
	#5 $display("%t:Entry 1",$time);
	#2 $display("%t:Entry 2",$time);
	#5 $display("%t:Entry 3",$time);
	join
	end
endmodule

//#                    0:Entry 1
//#                    2:Entry 2
//#                    5:Entry 1
//#                    5:Entry 3
//#                   50:Entry 2
