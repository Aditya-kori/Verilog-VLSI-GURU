module prime_num;
 integer i,j,num;
 reg prime;
 initial begin
 $value$plusargs("Num=%d",num);
 i=2;
 while(i<num) begin
 j=2;
 prime=0;
 while(j<=i**0.5) begin
 if(i%j==0) begin
 prime=1;
 end
 j=j+1;
 
 end
 if(prime==0) $display("Prime Number is= %0d",i);
 i=i+1;
 end
 end
endmodule

//# Prime Number is= 2
//# Prime Number is= 3
//# Prime Number is= 5
//# Prime Number is= 7
//# Prime Number is= 11
//# Prime Number is= 13
//# Prime Number is= 17
//# Prime Number is= 19
//# Prime Number is= 23
//# Prime Number is= 29
//# Prime Number is= 31
//# Prime Number is= 37
//# Prime Number is= 41
//# Prime Number is= 43
//# Prime Number is= 47
//# Prime Number is= 53
//# Prime Number is= 59
//# Prime Number is= 61
//# Prime Number is= 67
//# Prime Number is= 71
//# Prime Number is= 73
//# Prime Number is= 79
//# Prime Number is= 83
//# Prime Number is= 89
//# Prime Number is= 97
