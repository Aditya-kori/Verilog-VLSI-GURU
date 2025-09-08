module tb;
	integer value,exist;
	integer a[9:0];
	integer i,j;
		initial begin
		for(i=0;i<10;) begin
			value=$urandom_range(40,49);
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
//# a='{47, 49, 44, 43, 45, 48, 41, 46, 40, 42}
	
endmodule
