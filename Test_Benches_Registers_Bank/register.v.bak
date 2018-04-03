module register(data, clock, enable_write, output0);

	input [15:0] data;
	input clock;
	input enable_write;
	output reg [15:0] output0;
	
	always @(posedge clock) begin
		if(enable_write)
			output0 <= data;
		else
			output0 <= 16'b0;
	end

endmodule
