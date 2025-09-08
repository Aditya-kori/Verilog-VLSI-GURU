module tb;
reg [31:0]arr[9:0];
integer i;
initial begin
for(i=0;i<10;i=i+1) arr[i]=$urandom_range(40,49);
$display("arr=%p",arr);
end
endmodule

//# arr='{48, 41, 42, 42, 40, 46, 42, 42, 40, 42}
