module test_register;
  
  reg [15:0] data;
  reg clock;
  reg enable_write;
  wire output0;
  
  register reg1(data, clock, enable_write, output0);
  
  initial begin
    clock = 0;
    enable_write = 1;
    #20;
  end
  
  always begin
    #25 clock = ~clock;  
  end
  
  initial begin
    data = 16'b0110011001100110;        			// Number 26214 in decimal
    #25;							// Waits 25 units time to enable write
    enable_write = 1;
    #100;

    enable_write = 0;
    data = 16'b0000000000000010;				// Number 2 in decimal, put Q is not changed
    #25; 

    data = 16'b0000000000000100;				// Number 4 in decimal, Q is changed, 25 units time after.
    #25;
    enable_write = 1;

    #300 $finish;   
  end
  
endmodule  