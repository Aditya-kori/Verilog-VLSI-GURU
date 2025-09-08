module tb;
integer d;
integer q1,q2,q3,q4,q5;
initial begin
d=10;
q1<=d;
q2<=q1;
q3<=q2;
q4<=q3;
q5<=q4;
#1;
$display("d=%0d, q1=%0d, q2=%0d, q3=%0d, q4=%0d, q5=%0d",d,q1,q2,q3,q4,q5);
end
initial begin
d=20;
q3<=q2;
q2<=q1;
q5<=q4;
q4<=q3;
q1<=d;
#1;
$display("d=%0d, q1=%0d, q2=%0d, q3=%0d, q4=%0d, q5=%0d",d,q1,q2,q3,q4,q5);
end
endmodule

//# d=20, q1=20, q2=x, q3=x, q4=x, q5=x
//# d=20, q1=20, q2=x, q3=x, q4=x, q5=x
