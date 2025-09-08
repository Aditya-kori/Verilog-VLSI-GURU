module tb;
initial begin
	run();
end
task run(); begin
//#5 $display("Entry 1");//5ns
//#2 $display("Entry 2");//7ns
//#5 $display("Entry 3");//13ns
fork
#5 $display("Entry 1");//5ns
#2 $display("Entry 2");//2ns
#5 $display("Entry 3");//5ns
join
end
endtask
endmodule


//# Entry 1
//# Entry 2
//# Entry 3
//
//# Entry 2
//# Entry 1
//# Entry 3
