module tb;
integer seed,a;
initial begin
$value$plusargs("seed=%d",seed);
a=$random(seed);
$display(a);
end
endmodule
//# -2138988031
