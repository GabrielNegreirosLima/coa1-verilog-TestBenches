module test_ffsr;

reg s, r;
reg clear, clock;
wire q;

ffsr ff(s, r, clock, clear, q);			// ff it's the module in test

initial begin
	clock = 0;
	clear = 1;
	#200 $finish;				// 200 time units until the finish
end

always begin
	#25 clock = ~clock;			// clock is varying each 25 time units
end

initial begin

	#20 clear = 0;				// disable the clear


	s = 1;
	r = 0;
	#70					// wait 70 time units until nexts lines be executed

	r = 1;
	s = 0;
	# 70;

	r = 0;
	s = 1;
	#20;
	clear = 1;
	#20;

end

endmodule