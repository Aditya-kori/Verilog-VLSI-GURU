module d_ff(clk,d,q,qb);
input clk,d;
output q,qb;
wire clkb,db,n1,n2,n3,n4,n5,n6;
not g1(clkb,clk);
not g10(db,d);
nand g2(n1,d,clkb);
nand g3(n2,db,clkb);
nand g4(n3,n4,n1);
nand g5(n4,n3,n2);
nand g6(n5,n6,clk);
nand g7(n6,n5,clk);
nand g8(q,qb,n5);
nand g9(qb,q,n6);
endmodule
