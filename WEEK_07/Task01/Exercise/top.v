module top
(       input wire [31:0] instruction,
        output  [63:0] readData1,
        output  [63:0] readData2
	       
);
         wire [6:0] opcode;
	       wire [4:0] rd;
	       wire [2:0] funct3;
	       wire [4:0] rs1;
	       wire [4:0]  rs2;
	       wire [6:0] funct7;
	       
	      wire [63:0] WriteData ;
        wire clk, reset, regWrite ;
    
	       instruction_parser instpar001
	       (
	        .instruction(instruction),
		      .opcode(opcode),
		      .rd(rd),
		      .funct3(funct3),
		      .rs1(rs1),
		      .rs2(rs2),
		      .funct7(funct7)
	       );
	       registerFile regfile001
	       (
	       .WriteData(WriteData),
          .rs1(rs1),
          .rs2(rs2),
          .rd(rd),
          .clk(clk),
          .regWrite(regWrite),
          .reset(reset),
          .readData1(readData1),
          .readData2(readData2)
	       );
	   endmodule
