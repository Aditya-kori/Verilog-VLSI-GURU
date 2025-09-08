module tb;
reg[15:0]a;
initial begin
a=$random;
$display("a=%c",a);
$display("a=%d",a);
$display("a=%m",a);
end
endmodule

//# a=$
//# a=13604
//# a=tb13604
