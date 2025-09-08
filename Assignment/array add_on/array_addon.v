module array;
reg [3:0]a[10:0];
reg [3:0]b[15:0];
integer i;
initial begin
for(i=0;i<11;i=i+1)
begin
a[i]=$random;
end
$display("a:%p",a);
for(i=16;i>0;i=i-1)
begin
b[i]=a[i-5];
{b[4],b[3],b[2],b[1],b[0]}=$random;
end
$display("b:%p",b);
end
endmodule
//Generate values between 3.3 to 9.7 using $random

//# a:'{6, 13, 1, 2, 5, 13, 13, 3, 9, 1, 4}
//# b:'{6, 13, 1, 2, 5, 13, 13, 3, 9, 1, 4, 8, 4, 9, 5, 12}
