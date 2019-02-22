module top(
        input wire [5:0]a,
        input wire [5:0]b,
        input wire [3:0] ALUOp,
        input wire CarryIn,
        output reg [5:0] Result,
        output reg CarryOut
        );
        
    ALU_1_bit alu0
    (
    .a(a[0]),
    .b(b[0]),
    .ALUOp(ALUOp),
    .CarryIn(CarryIn),
    .CarryOut(alu0.CarryOut),
    .Result(Result[0])
    );
    ALU_1_bit alu1
    (
    .a(a[1]),
    .b(b[1]),
    .ALUOp(ALUOp),
    .CarryIn(CarryOut0),
    .CarryOut(CarryOut),
    .Result(Result[1])
    );
    ALU_1_bit alu2
    (
    .a(a[2]),
    .b(b[2]),
    .ALUOp(ALUOp),
    .CarryIn(CarryOut1),
    .CarryOut(CarryOut),
    .Result(Result[2])
    );
    ALU_1_bit alu3
    (
    .a(a),
    .b(b),
    .ALUOp(ALUOp),
    .CarryIn(CarryOut2),
    .CarryOut(CarryOut),
    .Result(Result[3])
    );
    ALU_1_bit alu4
    (
    .a(a),
    .b(b),
    .ALUOp(ALUOp),
    .CarryIn(CarryOut3),
    .CarryOut(CarryOut),
    .Result(Result[4])
    );
    ALU_1_bit alu5
    (
    .a(a),
    .b(b),
    .ALUOp(ALUOp),
    .CarryIn(CarryOut4),
    .CarryOut(CarryOut),
    .Result(Result[5])
    );  
          
        endmodule