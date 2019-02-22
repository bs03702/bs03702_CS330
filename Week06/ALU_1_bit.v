module ALU_1_bit(
        input wire a,
        input wire b,
        input wire [3:0] ALUOp,
        input wire CarryIn,
        output reg Result,
        output reg CarryOut
        );
        reg mux1out ;
        reg mux2out;
  
        always@(a or b or ALUOp)
          begin
            mux1out = (~a);
            mux2out =(~b);
            case(ALUOp)
                4'b0000 : Result = (a & b);
                4'b0001 : Result = (a | b);
                4'b0010 : Result = (a & ~b & ~CarryIn) +(~a & b & ~CarryIn) + (~a & ~b & CarryIn) +( a & b & CarryIn );
                4'b0010 : Result = (a & ~b & ~CarryIn) +(~a & b & ~CarryIn) + (~a & ~b & CarryIn) +( a & b & CarryIn );
                4'b1100 : Result = ~(a| b);
            endcase
            
            CarryOut = (a & CarryIn)+(b & CarryIn)+ (a & b );
            
          end
          
        endmodule