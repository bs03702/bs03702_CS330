module tb2 ();
    reg [1:0] ALUOp;
    reg [3:0] Funct;
    wire [3:0] Operation;
    
    ALU_Control alu001 
    (ALUOp,Funct,Operation);
    
    initial
          begin
            //I/S-Type (ld, sd)
            ALUOp = 2'b00  ;
            Funct = 4'b0000 ;
            
            //SB-Type (Beq)
            #10
            ALUOp = 2'b01 ;
            Funct = 4'b0000 ;
            
            //R-Type 
            #10
            ALUOp = 2'b10 ;
            Funct = 4'b0000 ;
            #10
            ALUOp = 2'b10 ;
            Funct = 4'b1000 ;
            #10
            ALUOp = 2'b10 ;
            Funct = 4'b0111 ;
            #10
            ALUOp = 2'b10 ;
            Funct = 4'b0110 ;
           
          end
          
        endmodule