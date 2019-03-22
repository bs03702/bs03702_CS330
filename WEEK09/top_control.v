module top_control(Opcode, Operation,Funct);
        input [6:0] Opcode;
        input [3:0] Funct;
        output wire [3:0] Operation;
            
              
        wire[1:0] ALUOp;
        wire MemRead;
        wire MemtoReg;
        wire Branch;
        wire MemWrite;
        wire ALUSrc;
        wire RegWrite;
        
        
        Control_Unit CU002
        ( 
            Opcode,ALUOp,MemRead,
            MemtoReg,Branch,MemWrite,
            ALUSrc,RegWrite
          
        );
        
         ALU_Control alu001 
        (
          .ALUOp(ALUOp),
          .Funct(Funct),
          .Operation(Operation)
        );
        
      endmodule