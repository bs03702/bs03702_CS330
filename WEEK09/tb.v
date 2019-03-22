module tb ();
        reg[6:0] Opcode;
        wire[1:0] ALUOp;
        wire MemRead;
        wire MemtoReg;
        wire Branch;
        wire MemWrite;
        wire ALUSrc;
        wire RegWrite;
        Control_Unit CU001
        ( 
            Opcode,ALUOp,MemRead,
            MemtoReg,Branch,MemWrite,
            ALUSrc,RegWrite
          
        );
          
          initial
          begin
            Opcode = 7'b0110011;
            #10
            Opcode = 7'b0000011;
            #10
            Opcode = 7'b0100011;
            #10
            Opcode = 7'b1100011 ;
          end
          
        endmodule
        
        
        
        