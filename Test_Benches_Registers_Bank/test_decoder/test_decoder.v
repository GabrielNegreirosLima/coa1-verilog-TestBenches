module test_decoder;

	reg [2:0] A;
	wire [7:0] output0;

	decoder d1(A, output0);

	initial begin
		A = 0;				// Select Q = 1
		#30;

		A = 3'b010;			// Select Q = 4
		#25;

		A = 3'b111;			// Select Q = 128
		#50;

		A = 3'b101;			// Select Q = 32
		#25 $finish;
	end

endmodule 