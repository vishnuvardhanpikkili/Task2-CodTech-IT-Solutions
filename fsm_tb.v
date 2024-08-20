module fsm_tb;

reg clk;
wire [3:0] count;

fsm uut (
	.clk(clk),
	.count(count)
);

initial begin
	clk = 0;
	forever #5 clk = ~clk;
end

initial begin
	#100 $finish;
end

endmodule
