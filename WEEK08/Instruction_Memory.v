module Instruction_Memory
  (
	input  wire [63:0] InstructionAddress,
	output  [31:0] Instruction
	);
	
	//16 8-bits memory Array registers
	reg [7:0] memReg [15:0];		
	
	//Initialising the integer variable 'index' for loop purpose
	integer index;
	
	initial
	begin
	for (index = 0; index < 16; index = index + 1)
	  //initializing 16 locations with random values
		memReg[index] <= index;		
	end
	
	//whenever an Inst_Address field is changed,Inst_Address should appear at the 32-bit output port, Instruction. 
  //always @(InstructionAddress)
	 //begin
	   //Concatenating the InstructionAddress According to The MSB TO LSB ORDER.
	   //INST + 3 -> MSB (most right)
	   //INST + 2 -> MIDDLE
	   //INST + 1 -> MIDDLE
	   //INST + 0 -> LSB (most left)
		  assign Instruction = {memReg[InstructionAddress[3:0]+3], memReg[InstructionAddress[3:0]+2], memReg[InstructionAddress[3:0]+1], memReg[InstructionAddress[3:0]]};
	 //end
		
endmodule