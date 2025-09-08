module tb;
integer a,b,c;
initial begin
$display("Learning verilog in VLSIGuru");
$monitor(a);
a=100;
b<=10;
$write(a);
$write(b);
c<=a;
$display(a);

end
endmodule

//# Learning verilog in VLSIGuru
//#         100          x        100
//#         100
