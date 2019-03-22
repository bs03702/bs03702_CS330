module tb3();
        reg [6:0] Opcode;
        wire [3:0] Operation;
        reg [3:0] Funct;
        
        top_control top0001(Opcode, Operation,Funct);
        
         initial
          begin
            //R-Type 
            Opcode = 7'b0110011;
              Funct = 4'b0000;
              #10
              Funct = 4'b1000 ;
              #10
              Funct = 4'b0111 ;
              #10
              Funct = 4'b0110;
            //I-Type (ld)
            #10
            Opcode = 7'b0000011;
            Funct = 4'b0000;
            //I-Type (sd) 
            #10
            Opcode = 7'b0100011;
            Funct = 4'b0000;
            //SB-Type (Beq)
            #10
            Opcode = 7'b1100011 ;
            Funct = 4'b0000;
           
          end
          
        endmodule