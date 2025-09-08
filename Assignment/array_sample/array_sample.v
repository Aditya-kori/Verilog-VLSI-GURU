module tb;
integer a[10:0];
integer b[10:0];
integer i;
initial begin
for(i=0;i<11;i=i+1) begin
a[i]=$urandom_range(11,99);

end
for(i=0;i<11;i=i+1) begin
b[i]=a[10-i];
end
$display("a:%p",a);
$display("b:%p",b);
end
endmodule
