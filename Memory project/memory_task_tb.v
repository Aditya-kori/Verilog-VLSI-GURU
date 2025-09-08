`include "memory.v"
module tb;
	parameter WIDTH=8;
	parameter DEPTH=32;
	parameter ADDR_WIDTH=$clog2(DEPTH);
	reg clk,rst,wr_rd,valid;
	reg [ADDR_WIDTH-1:0]addr;
	reg [WIDTH-1:0]wdata;
	wire [WIDTH-1:0]rdata;
	wire ready;
	integer i;
	memory dut(.clk(clk),.rst(rst),.addr(addr),.wr_rd(wr_rd),.wdata(wdata),.rdata(rdata),.valid(valid),.ready(ready));
	always #5 clk=~clk;
	initial begin
	reset();

	//writes
	writes();

	//reads
	reads();
	end

	initial begin
	#1000;
	$finish;
	end

	task reset();
	begin
	clk=0;
	rst=1;
	wr_rd=0;
	valid=0;
	addr=0;
	wdata=0;
	repeat(2)@(posedge clk);
	rst=0;
	end
	endtask

	task writes();
	begin
	for(i=0;i<DEPTH;i=i+1) begin
	@(posedge clk);
	wr_rd=1;
	addr=i;
	wdata=$urandom_range(50,200);
	valid=1;
	wait(ready==1);
	end
	end
	endtask

	task reads();
	begin
	for(i=0;i<DEPTH;i=i+1) begin
	@(posedge clk);
	wr_rd=0;
	addr=i;
	valid=1;
	wait(ready==1);
	end
	end
	endtask
endmodule
