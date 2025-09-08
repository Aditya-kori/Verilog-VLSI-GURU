`include "fifo.v"
module tb;
	parameter WIDTH=8;
	parameter FIFO_SIZE=16;
	parameter PTR_WIDTH=$clog2(FIFO_SIZE);
reg clk,rst,wr_en,rd_en;
reg [WIDTH-1:0]wdata;
wire full,overflow,empty,underflow;
wire [WIDTH-1:0]rdata;
integer i,j,k,l,wr_delay,rd_delay;
reg [20*8-1:0]testcase;
syn_fifo dut(.clk(clk),.rst(rst),.wr_en(wr_en),.wdata(wdata),.rd_en(rd_en),.rdata(rdata),.full(full),.overflow(overflow),.empty(empty),.underflow(underflow));

always #5 clk=~clk;
initial begin
$value$plusargs("testcase=%s",testcase);
reset();
	writes(10);
	reads(5);
	bd_reads();
	case(testcase)
	"FULL":begin
	writes(FIFO_SIZE);
	end
	"EMPTY":begin
	writes(FIFO_SIZE);
	reads(FIFO_SIZE);
	bd_reads();
	end
	"OVERFLOW":begin
	writes(FIFO_SIZE+1);
	end
	"UNDERFLOW":begin
	writes(FIFO_SIZE);
	reads(FIFO_SIZE+1);
	end
	"CONCURRENT":begin
	fork
	begin
	for(k=0;k<20;k=k+1)
	writes(1);
	wr_delay=$urandom_range(10,15);
	#(wr_delay);
	end
	begin
	wait(empty==0);
	for(l=0;l<20;l=l+1)
	reads(1);
	rd_delay=$urandom_range(10,15);
	#(rd_delay);
	end
	join
	end
	endcase
end

task reset(); begin
	clk=0;
	rst=1;
	wr_en=0;
	rd_en=0;
	wdata=0;
	repeat(2) @(posedge clk);
	rst=0;
end 
endtask

task writes(input integer num_writes); begin
	for(i=0;i<num_writes;i=i+1) begin
		@(posedge clk);
		wr_en=1;
		wdata=$urandom_range(50,200);
	end
	@(posedge clk);
	wr_en=0;
	wdata=0;
end
endtask

task reads(input integer num_reads); begin
	for(i=0;i<num_reads;i=i+1) begin
		@(posedge clk);
		rd_en=1;
	end
	@(posedge clk);
	rd_en=0;
end
endtask

initial begin
#500;
$finish;
end

task bd_reads();begin
$writememh("output.hex",dut.fifo);
end
endtask
endmodule
