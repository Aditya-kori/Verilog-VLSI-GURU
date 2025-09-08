module ADDR_GEN(i1,i2,i3,o1,o2,o3);
input i1,i2,i3;
output o1,o2,o3;
endmodule

module DATA_GEN(i1,i2,o1,o2,o3);
input i1,i2;
output o1,o2,o3;
endmodule

module TIMING_CTRL(i1,i2,i3,i4,o1,o2,o3,o4);
input i1,i2,i3,i4;
output o1,o2,o3,o4;
endmodule

module MEM_CTRL(p1,p2,p3,p4,p5,q1,q2,q3,q4,q5,q6);
input p1,p2,p3,p4,p5;
output q1,q2,q3,q4,q5,q6;
ADDR_GEN g1(.i1(p1),.i2(p2),.i3(n3),.o1(q1),.o2(n1),.o3(n2));
DATA_GEN g2(.i1(p3),.i2(p4),.o1(n3),.o2(q6),.o3(n4));
TIMING_CTRL g3(.i1(n1),.i2(n2),.i3(n4),.i4(p5),.o1(q2),.o2(q4),.o3(q3),.o4(q5));
endmodule
