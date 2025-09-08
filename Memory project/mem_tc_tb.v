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
	integer i,j,k;
	reg[20*8-1:0]testcase;
	memory dut(.clk(clk),.rst(rst),.addr(addr),.wr_rd(wr_rd),.wdata(wdata),.rdata(rdata),.valid(valid),.ready(ready));
	always #5 clk=~clk;
	initial begin
	$value$plusargs("testcase=%s",testcase);
	reset();
	case(testcase)
	"1WR_1RD":begin
	writes(5,1);
	reads(5,1);
	end
	"5WR_5RD":begin
	writes(10,5);
	reads(10,5);
	end
	"ALL_LOC":begin
	writes(0,DEPTH);
	reads(0,DEPTH);
	end
	"1st_quat":begin
	writes(0,DEPTH/4);
	reads(0,DEPTH/4);
	end
	"2nd_quat":begin
	writes(DEPTH/4,DEPTH/4);
	reads(DEPTH/4,DEPTH/4);
	end
	"3rd_quat":begin
	writes(DEPTH/2,DEPTH/4);
	reads(DEPTH/2,DEPTH/4);
	end
	"4th_quat":begin
	writes((3*DEPTH)/4,DEPTH/4);
	reads((3*DEPTH)/4,DEPTH/4);
	end
	"ALT_WR_RD":begin //Consecutive write and read
	for(k=0;k<DEPTH;k=k+1) begin
		writes(k,1);
		reads(k,1);
	end
	end
	"BD_WR_BD_RD":begin
		bd_writes(5,10);
		bd_reads(5,10);
	end
	"WR_20_LOC":begin
		writes(5,20);
	end
	"RD_20_LOC":begin
		writes(0,32);
		reads(15,20);
	end
	"WR_RD_10_LOC":begin
		writes(15,11);
	end
	endcase
	//writes
//	writes(0,32);

	//reads
//	reads(0,32);
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

	task writes(input reg [ADDR_WIDTH-1:0]start_loc,input reg[ADDR_WIDTH:0]loc);
	begin
	for(i=start_loc;i<(start_loc+loc);i=i+1) begin
	@(posedge clk);
	wr_rd=1;
	addr=i;
	//wdata=$urandom_range(50,200);
	wdata=$urandom_range(55,65);
	valid=1;
	wait(ready==1);
	end
	@(posedge clk);
	addr=0;
	valid=0;
	wr_rd=0;
	wdata=0;
	end
	endtask

	task reads(input reg[ADDR_WIDTH-1:0]start_loc,input reg[ADDR_WIDTH:0]loc);
	begin
	for(j=start_loc;j<(start_loc+loc);j=j+1) begin
	@(posedge clk);
	wr_rd=0;
	addr=j;
	valid=1;
	wait(ready==1);
	end
	@(posedge clk);
	addr=0;
	valid=0;
	wr_rd=0;
	wdata=0;
	end
	endtask

	task bd_writes(input reg[ADDR_WIDTH-1:0]start_loc,input reg[ADDR_WIDTH:0]num_loc);
	begin
		$readmemh("input.hex",dut.mem,start_loc,num_loc);
	end
	endtask

	task bd_reads(input reg[ADDR_WIDTH-1:0]start_loc,input reg[ADDR_WIDTH:0]num_loc);
	begin
		$writememh("output.hex",dut.mem,start_loc,num_loc);
	end
	endtask
endmodule
