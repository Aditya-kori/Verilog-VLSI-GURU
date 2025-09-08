module tb;
reg [15:0]data[511:0];
integer i;
initial begin
//data=0;
for(i=0;i<512;i=i+1)
begin
data[i]=0;
data[458]=16'hFFFF;
$display(data[i]);
end
end
endmodule
