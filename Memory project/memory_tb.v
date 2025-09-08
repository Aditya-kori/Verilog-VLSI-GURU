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
	memory dut(.clk(clk),.rst(rst),.addr(addr),.wr_rd(wr_rd),.wdata(wdata),.rdata(rdata),.valid(valid),.ready(ready));
	always #5 clk=~clk;
	initial begin
	clk=0;
	rst=1;
	wr_rd=0;
	valid=0;
	addr=0;
	wdata=0;
	repeat(2)@(posedge clk);
	rst=0;
	
	//writes
	wr_rd=1;
	addr=10;
	wdata=100;
	valid=1;
	wait(ready==1);

	//reads
	wr_rd=0;
	addr=10;
	valid=1;
	wait(ready==1);
	end

	initial begin
	#100;
	$finish;
	end
endmodule
