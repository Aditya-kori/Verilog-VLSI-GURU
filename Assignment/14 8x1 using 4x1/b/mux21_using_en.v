module mux21(en,s,i0,i1,y);
input en,s,i0,i1;
output y;
assign y=(en&(~s)&i0)|(en&s&i1);
endmodule
