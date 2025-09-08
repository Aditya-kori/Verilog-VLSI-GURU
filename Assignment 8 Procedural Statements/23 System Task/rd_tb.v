module tb;
integer fh;
reg[30*8-1:0]line;
initial begin
fh=$fopen("output.txt","r");
while($fgets(line,fh)) begin
	$display("line=%0s",line);
end
$fclose(fh);
end
endmodule
//# line=a=0 b=0 c=1 sum=1, cout=0
//# 
//# line=a=0 b=0 c=1 sum=1, cout=0
//# 
//# line=a=0 b=1 c=1 sum=0, cout=1
//# 
//# line=a=1 b=0 c=1 sum=0, cout=1
//# 
//# line=a=1 b=0 c=1 sum=0, cout=1
//# 
//# line=a=1 b=0 c=1 sum=0, cout=1
//# 
//# line=a=0 b=1 c=0 sum=1, cout=0
//# 
//# line=a=0 b=0 c=1 sum=1, cout=0
//# 
//# line=a=1 b=0 c=1 sum=0, cout=1
