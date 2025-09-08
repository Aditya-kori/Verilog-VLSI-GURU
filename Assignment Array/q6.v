module tb;
reg [31:0]mem[511:0];
integer i;
initial begin
for(i=0;i<512;i=i+1)
begin
mem[i]=0;
$display(mem[i]);
end
end
endmodule
