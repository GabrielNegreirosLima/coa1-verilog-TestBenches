module test_multiplexer;

	reg [15:0] input0, input1, input2, input3, input4, input5, input6, input7;
	reg [2:0] control;

	wire [15:0] output0;

	multiplexer mux1(input0, input1, input2, input3, input4, input5, input6, input7, control, output0);

	initial begin
		input0 = 16'b0101010101010101;				// (in decimal)input0 = 21845
		input1 = 16'b0000000000000001;				// (in decimal)input1 = 1
		input2 = 16'b0000000000000000;				// (in decimal)input2 = 0
		input3 = 16'b1000000000000000;				// (in decimal)input3 = 32768
		input4 = 16'b1111111111111111;				// (in decimal)input4 = 65535
		input5 = 16'b1000100001000011;				// (in decimal)input5 = 34883
		input6 = 16'b0101010111111111;				// (in decimal)input6 = 22015
		input7 = 16'b0101011100010000;				// (in decimal)input6 = 22288
		#25;
		
		control = 3'b010;					// Selects Q = input2
		#25;

		control = 3'b000;					// Selects Q = input0
		#50;

		control = 3'b111;					// Selects Q = input7
		#30;

		control = 3'b101;					// Selects Q = input5
		#75;

		control = 3'b001;					// Selects Q = input1
		#25;

		input0 = 16'b0000000000000000;				// Change the input 0 and after selects Q equal to it.
		control = 3'b000;
		#50 $finish;
	end

endmodule 