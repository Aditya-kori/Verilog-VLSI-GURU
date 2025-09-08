module tb;
real a,b;
initial begin
a=$clog2(128);
b=$clog2(129);
$display("a=%f b=%f",a,b);
end
endmodule

//# a=7.000000 b=8.000000

