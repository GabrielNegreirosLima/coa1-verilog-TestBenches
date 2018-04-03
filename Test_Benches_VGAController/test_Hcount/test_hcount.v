module teste_hcount;
  
reg Clock, Clear;

wire D, D_E, D_E_B, D_E_B_C, Roll_over;
wire [9:0] Q;

Hcount hcounter(Clock, Clear, Q, D, D_E, D_E_B, D_E_B_C, Roll_over);

initial begin
        Clear = 1;                                                      
        Clock = 0;
        #1;
        Clear = 0;
        #3400 $finish;                                                      // double of the time test to show it two times
end

always begin
        Clock = ~Clock; 
        #1;
end

endmodule