module tb;
	reg clk;
	real freq,tp,d_c,jitter,tp_jitter,ton,toff;
	initial begin
	$value$plusargs("freq=%f",freq);
	$value$plusargs("d_c=%f",d_c);
	$value$plusargs("jitter=%f",jitter);
	tp=1000/freq;
	end
	initial begin
	forever begin
	tp_jitter=($urandom_range((100-jitter),(100+jitter))/100.0)*tp;
	ton=(d_c*tp_jitter)/100.0;
	toff=tp_jitter-ton;
	clk=0;
	#(toff);
	clk=1;
	#(ton);
	end
	end
	initial begin	
	#1000;
	$finish;
	end

endmodule
