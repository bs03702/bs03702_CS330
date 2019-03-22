module Control_Unit( 
        Opcode,ALUOp,MemRead,
        MemtoReg,Branch,MemWrite,
        ALUSrc,RegWrite);
        
        input [6:0] Opcode;
        output reg[1:0] ALUOp;
        output reg MemRead;
        output reg MemtoReg;
        output reg Branch;
        output reg MemWrite;
        output reg ALUSrc;
        output reg RegWrite;
        
        always @(Opcode)
        begin 
    casex (Opcode)
          7'b110011: 
          begin
            ALUSrc = 1'b0;
            MemtoReg = 1'b0;
            RegWrite = 1'b1;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            Branch = 1'b0;
            ALUOp = 2'b10;
          end
        endcase

   casex (Opcode)
          7'b0000011: 
          begin
            ALUSrc = 1'b1;
            MemtoReg = 1'b1;
            RegWrite = 1'b1;
            MemRead = 1'b1;
            MemWrite = 1'b0;
            Branch = 1'b0;
            ALUOp = 2'b00;
          end
        endcase  
        
    casex (Opcode)
          7'b0100011: 
          begin
            ALUSrc = 1'b1;
            MemtoReg = 1'b1;
            RegWrite = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b1;
            Branch = 1'b0;
            ALUOp = 2'b00;
          end
        endcase  
        
    casex (Opcode)
          7'b1100011: 
          begin
            ALUSrc = 1'b0;
            MemtoReg = 1'b1;
            RegWrite = 1'b0;
            MemRead = 1'b0;
            MemWrite = 1'b0;
            Branch = 1'b1;
            ALUOp = 2'b01;
          end
        endcase   
    end      
    endmodule
    
          