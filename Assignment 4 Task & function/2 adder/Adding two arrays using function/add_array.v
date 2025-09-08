module add_array;
integer intA1[0:9];
integer intA2[0:9];
integer intA3[0:9];
integer i;
function integer add(input integer a,b);
begin
add=a+b;
end
endfunction
initial begin
for(i=0;i<10;i=i+1)
begin
intA1[i]=$urandom_range(0,100);
intA2[i]=$urandom_range(0,100);
intA3[i]=add(intA1[i],intA2[i]);
end
$display("intA1=%p\nintA2=%p\nintA3=%p",intA1,intA2,intA3);
end
endmodule
//# intA1='{2, 2, 45, 17, 68, 44, 74, 91, 47, 23}
//# intA2='{88, 67, 82, 27, 30, 6, 20, 1, 97, 100}
//# intA3='{90, 69, 127, 44, 98, 50, 94, 92, 144, 123}
