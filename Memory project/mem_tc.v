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
	integer i,j,k,m,datap;
	integer dataA[DEPTH-1:0];
	reg[20*8-1:0]testcase;
	memory dut(.clk(clk),.rst(rst),.addr(addr),.wr_rd(wr_rd),.wdata(wdata),.rdata(rdata),.valid(valid),.ready(ready));
	always #5 clk=~clk;
	initial begin
	for(m=0;m<DEPTH;m=m+1) begin
		datap=$urandom_range(50,200);
		if(datap[0]==1) dataA[m]=datap;
		else m=m-1;
	end
	$value$plusargs("testcase=%s",testcase);
	reset();
	case(testcase)
//	"ALT_WR_RD":begin
//	for(k=0;k<DEPTH;k=k+1) begin
//	writes(k,1);
//	reads(k,1);
//	end
//	end
	"ARY_WR_RD":begin
	for(m=0;m<DEPTH;m=m+1)	begin
	writes(m,1,dataA[m]);
	reads(m,1);
	end
	end
	"EVEN_LOC_RD_WR":begin
	for(m=0;m<DEPTH;m=m+2) begin
		writes(m,1,dataA[m]);
		reads(m,1);
	end
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

	task writes(input reg [ADDR_WIDTH-1:0]start_loc,input reg[ADDR_WIDTH:0]loc, input reg[WIDTH-1:0]data);
	begin
	for(i=start_loc;i<(start_loc+loc);i=i+1) begin
	@(posedge clk);
	wr_rd=1;
	addr=i;
	//wdata=$urandom_range(50,200);
	wdata=data;
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
endmodule
