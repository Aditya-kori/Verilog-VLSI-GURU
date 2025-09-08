module tb;
initial begin
fork
$display("%0t,Entry 1",$time);
#5;
#10 $display("%0t,Entry 2",$time);
join
$display("%0t,Entry 3",$time);
end
endmodule
//# 0,Entry 1
//# 10,Entry 2
//# 10,Entry 3
