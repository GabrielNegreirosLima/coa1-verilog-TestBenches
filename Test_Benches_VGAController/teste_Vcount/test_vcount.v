module test_Vcount;

reg Clear, Clock;

wire R, R_S, R_S_P, R_S_P_Q;
wire [9:0] Q;

Vcount vcounter(Clock, Clear,  Q, R, R_S, R_S_P, R_S_P_Q);              // instance a module of Vcount

initial begin
        Clear = 1;                                                      // Sets Q = 10'b0
        Clock = 0;
        #1;
        Clear = 0;
        #2200 $finish;                                                   // double of the time test to show it two times
end

always begin
        Clock = ~Clock; 
        #1;
end

endmodule
