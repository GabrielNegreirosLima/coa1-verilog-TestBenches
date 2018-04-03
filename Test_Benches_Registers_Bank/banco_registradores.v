module banco_registradores(Read1, Read2, WriteReg, WriteData, 
									RegWrite, Data1, Data2, clock);
									
		input [2:0] Read1;
		input [2:0] Read2;
		input [2:0] WriteReg;
		input [15:0] WriteData; 						//dados para escrita
		input RegWrite, clock; 							// sinalizador para escrita e clock
		output reg[15:0] Data1, Data2;
		
		reg [15:0] reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, 
      reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16;
		
		wire [7:0] saidadeleitu1;
		wire [7:0] saidadeleitu2;
			  
			  
		registrador r1(WriteData,clock,RegWrite,reg1);
		registrador r2(WriteData,clock,RegWrite,reg2);
		registrador r3(WriteData,clock,RegWrite,reg3);
		registrador r4(WriteData,clock,RegWrite,reg4);
		registrador r5(WriteData,clock,RegWrite,reg5);
		registrador r6(WriteData,clock,RegWrite,reg6);
		registrador r7(WriteData,clock,RegWrite,reg7);
		registrador r8(WriteData,clock,RegWrite,reg8);
		registrador r9(WriteData,clock,RegWrite,reg9);
		registrador r10(WriteData,clock,RegWrite,reg10);
		registrador r11(WriteData,clock,RegWrite,reg11);
		registrador r12(WriteData,clock,RegWrite,reg12);
		registrador r13(WriteData,clock,RegWrite,reg13);
		registrador r14(WriteData,clock,RegWrite,reg14);
		registrador r15(WriteData,clock,RegWrite,reg15);
		registrador r16(WriteData,clock,RegWrite,reg16);
		
		always @(RegWrite)
		begin
			if(!RegWrite) 
			begin
				multiplexador m1(reg1, reg2, reg3, reg4, reg5, reg6, reg7, reg8, Read1, Data1);
				multiplexador m2(reg9, reg10, reg11, reg12, reg13, reg14, reg15, reg16, Read2, Data2);
			end
			else 
			begin
				decodificador d1(WriteReg[7:0],saidadecod1);
				decodificador d2(Write[15:8], saidadecod2);
				if(saidadecod1) begin
					case(saidadecod1)
						3'b000: reg1 = WriteData;
						3'b001: reg2 = WriteData;
						3'b010: reg3 = WriteData;
						3'b011: reg4 = WriteData;
						3'b100: reg5 = WriteData;
						3'b101: reg6 = WriteData;
						3'b110: reg7 = WriteData;
						3'b111: reg8 = WriteData;
					endcase
				end
				else(saidadecod2)
				begin
					case(saidadecod1)
						3'b000: reg9 = WriteData;
						3'b001: reg10 = WriteData;
						3'b010: reg11 = WriteData;
						3'b011: reg12 = WriteData;
						3'b100: reg13 = WriteData;
						3'b101: reg14 = WriteData;
						3'b110: reg15 = WriteData;
						3'b111: reg16 = WriteData;
					endcase
				end
			end
		end
	

		
endmodule

// CÓDIGO SEM MÓDULOS


			  
			  
/*		
		
		
		reg [31:0] banco[31:0];
		
		always @(posedge clock) begin
			if(RegWrite)begin
				banco[WriteReg] <= WriteData;
			end
			else	begin
				Data1 = banco[Read1];
				Data2 = banco[Read2];
			end	
		end

-===================================================
*/
			