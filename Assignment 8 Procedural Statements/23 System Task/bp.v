module tb;
integer a;
initial begin
repeat(10)begin
{a}=$random;
#1;
$display(a);
$stop;
end
end
initial begin
#20;
$finish;
end
endmodule
