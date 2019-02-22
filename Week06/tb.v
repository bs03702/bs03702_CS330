module tb
  (
  
  );
 
   reg a;
   reg b;
   reg [3:0] ALUOp;
   reg CarryIn;
    wire Result;
    wire CarryOut;
  
  ALU_1_bit alu1
    (
    .a(a),
    .b(b),
    .ALUOp(ALUOp),
    .CarryIn(CarryIn),
    .CarryOut(CarryOut),
    .Result(Result)
  );
  initial 
    begin
      a = 1'b1;
      b = 1'b1;
      ALUOp = 4'b0000;
      CarryIn = 1'b0;
      
      
      
      #10
      ALUOp = 4'b0001;
      
      #10
      ALUOp = 4'b0010;
      
      #10
      CarryIn = 1'b1;
      ALUOp = 4'b0110;
      
      #10
      ALUOp = 4'b1100;
    end
endmodule
  
  