module tb;
integer a[19:0];
integer i;
initial begin
for (i=0;i<19;i=i+1)
begin
	a[i]="aditya";
	$display("a=%0p",a);
end 
end
endmodule
