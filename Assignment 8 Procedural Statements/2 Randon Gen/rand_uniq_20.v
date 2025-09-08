module tb;
	integer value,exist;
	integer a[19:0];
	integer i,j;
		initial begin
		for(i=0;i<20;) begin
			value=$urandom_range(40,59);
			exist=0;
			for(j=0;j<i;j=j+1) begin
			if(value==a[j]) begin
			exist=1;
			j=i;
			end
			end
		if(exist==0) begin
		a[i]=value;
		i=i+1;
		end
		end
		$display("a=%p",a);
		end
endmodule
//# a='{43, 45, 54, 59, 47, 40, 57, 56, 49, 41, 44, 53, 55, 48, 58, 51, 46, 42, 50, 52}
