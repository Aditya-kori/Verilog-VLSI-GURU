module otp_gen;
	integer otp,otp_g;
	integer seed=145;
	initial begin
//	repeat(1000) begin
	otp=$random(seed);
	if(otp<0) otp=-otp;
	otp_g=otp%100000;
	#1;
if(otp_g<9999) otp_g=otp_g+10000;
$display("otp=%05d",otp_g);
	end
	//end
endmodule
