module tbEx
  (
  
  );
 
   reg [63:0]a;
   reg[63:0] b;
   reg [3:0] ALUOp;
    wire[63:0] Result;
    wire Zero;
  
  ALU_64_bit alu1
    (
    .a(a),
    .b(b),
    .ALUOp(ALUOp),
    .Zero(Zero),
    .Result(Result)
  );
  initial 
    begin
      a = 64'h7FFF2FFBFFF0FFFF;
      b = 64'h7FFF2F43200000;
      ALUOp = 4'b0000;

      
      #10
      ALUOp = 4'b0001;
      
      #10
      ALUOp = 4'b0010;
      
      #10
     
      ALUOp = 4'b0110;
      
      #10
      ALUOp = 4'b1100;
    end
endmodule
  
  