module multiplexer (
input0, input1, input2, input3, input4, input5, input6, input7, 
control, output0);

	input [15:0] input0, input1, input2, input3, input4, input5, input6, input7;
	input [2:0] control;
	output reg [15:0]  output0;
	
	always @(control)
	begin
		case(control)
			3'b000: output0 = input0;
			3'b001: output0 = input1;
			3'b010: output0 = input2;
			3'b011: output0 = input3;
			3'b100: output0 = input4;
			3'b101: output0 = input5;
			3'b110: output0 = input6;
			3'b111: output0 = input7;
			default: output0 = 16'b0;
		endcase
	end
endmodule
