module test_vgacontroller;

reg Reset, Clock;

wire V_sync, H_sync, VGA_BLANK, VGA_SYNC;
wire [9:0] Column_out, Row_out;

VGA_controller controller(Clock, Reset, H_sync, V_sync, VGA_BLANK, VGA_SYNC, Column_out, Row_out);

initial begin
	Reset = 1;
	Clock = 0;
	#1;
	Reset = 0;
	#5000000 $finish;
end

always begin
	Clock = ~Clock;
	#1;
end

endmodule 