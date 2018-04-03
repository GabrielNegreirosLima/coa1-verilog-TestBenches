module test_registrador;
  
  reg [15:0] dado;
  reg clock;
  reg habilita_escrita;
  wire saida;
  
  registrador reg1(dado, clock, habilita_escrita, saida);
  
  initial begin
    clock = 0;
    habilita_escrita = 0;
    #20;
  end
  
  always begin
    #25 clock = ~clock;  
  end
  
  initial begin
    dado = 16'b0110011001100110;        // Numero 26214 
  end
  
endmodule  