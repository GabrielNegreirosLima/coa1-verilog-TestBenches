module test_counter;

reg Count, Load; 
reg Clear, Clock;

reg [9:0] D;
wire [9:0] Q;

counter counter1(Count, Load, Clear, Clock, D, Q);

initial begin
  Clock = 0;
  Clear = 1;
  Count = 0;
end

always begin 
  #25 Clock = ~Clock;
end

initial begin
  #20 Clear = 0;                // Puts Q=0
  
  D = 10'b0110101000;
  Load = 1;                     // Puts Q = D
  #20;
  
  Load = 0;                    
  #25  
  Count = 1;                    // Adds 1 on Q to 75 more time units
  #75;
  
  Count = 0;                     
  Clear = 1;                     // Puts Q = D  again
  #20;
  #400 $finish;
end
endmodule