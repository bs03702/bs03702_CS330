module SingleCycleProcessor(clk, reset);
  input wire clk;
  input wire reset;
  
  wire [63:0] w_PC_Out;
  wire [31:0] w_instruction;
  wire [6:0] w_opcode;
  wire [4:0] w_rs1;
  wire [4:0] w_rs2;
  wire [4:0] w_rd;
  wire [63:0] w_imm_data;
  wire [63:0] w_ReadData1;
  wire [63:0] w_ReadData2;
  wire w_Branch;
  wire w_MemRead;
  wire w_MemtoReg;
  wire [1:0] w_ALUOp;
  wire w_MemWrite;
  wire w_ALUSrc;
  wire w_RegWrite;
  wire [3:0] w_Operation;
  wire [63:0] w_ReadData;
  wire [63:0] w_ALU_PC_4;
  wire [63:0] w_ALU_Branch;
  wire [63:0] w_ALU_Main;
  wire [63:0] w_MUX_Branch;
  wire [63:0] w_MUX_DM;
  wire [63:0] w_MUX_Offset;
  wire w_Zero;
  wire [6:0] w_funct7;
  wire [2:0] w_funct3;
  //wire C_in = w_Operation[2];

  ProgramCounter Pc(w_MUX_Branch,w_PC_Out,clk,reset);
  Instruction_Memory IM(	w_PC_Out,	w_instruction);
  instruction_parser Inst_Par
	(

		.instruction(w_instruction),
		.opcode(w_opcode),
		.rd(w_rd),
		.rs1(w_rs1),
		.rs2(w_rs2),
		.funct7(w_funct7),
		.funct3(w_funct3)
	);


  registerFile Registers(
        .WriteData(w_MUX_DM),
        .rs1(w_rs1),
        .rs2(w_rs2),
        .rd(w_rd),
        .regWrite(w_RegWrite),
        .clk(clk),
        .reset(reset),
        .readData1(w_ReadData1),
        .readData2(w_ReadData2)
        );
	

	immediate_data_extractor IMD

	(

		.instruction(w_instruction),

		.imm_data(w_imm_data)

	);

	
  Control_Unit CU( 
          w_opcode,w_ALUOp,w_MemRead,
          
           w_MemtoReg,w_Branch,w_MemWrite,
           
          w_ALUSrc,w_RegWrite
        );
	
	
  ALU_Control ALUC(w_ALUOp,{w_instruction[30], w_instruction[14:12]},w_Operation);


	Data_Memory DM

	(

		.clk(clk),

		.memWrite(w_MemWrite),

		.memRead(w_MemRead),

		.memAdd(w_ALU_Main),

		.writeData(w_ReadData2),

		.readData(w_ReadData)

	);

	
 
	ALU_64_bit ALU_PC_4

	(

		.a(w_PC_Out),

		.b(64'd4),

		.ALUOp(4'b0010),

		.Result(w_ALU_PC_4),

    .Zero()
	);

	

	ALU_64_bit ALU_Branch

	(

		.a(w_PC_Out),

		.b(w_imm_data << 1),		//TO SHIFT OR NOT TO SHIFT

		.ALUOp(4'b0010),

		.Result(w_ALU_Branch),
		
		.Zero()

	);

	

	ALU_64_bit ALU_Main

	(

		.a(w_ReadData1),

		.b(w_MUX_Offset),

		.ALUOp(w_Operation),

		.Result(w_ALU_Main),

		.Zero(w_Zero)

	);

	Mux MUX_Branch(w_ALU_PC_4 , w_ALU_Branch, w_Branch & w_Zero , w_MUX_Branch );

	
	Mux MUX_Offset	(w_ReadData2,w_imm_data,w_ALUSrc,w_MUX_Offset);

	
	Mux MUX_DM(w_ALU_Main,w_ReadData,w_MemtoReg,w_MUX_DM);





endmodule