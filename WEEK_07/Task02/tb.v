module tb();

	reg [63:0] InstructionAddress;
	wire [31:0] Instruction;
	
	//Initialise Instanve of Instruction Memory
	Instruction_Memory instMemory
	(
	       .InstructionAddress(InstructionAddress),
	       .Instruction(Instruction)
	 );
	
	initial
	begin
	  //Instruction should have memReg[3:0] // InstructionAddress = 0
		#0 
		InstructionAddress <= 64'd0;	
		//at 10 sec, Instruction sould have memReg[7:4]	  // InstructionAddress = 4
		#10 
		InstructionAddress <= 64'd4; 	
		// Instruction sould have memReg[11:8]  // InstructionAddress = 8
		#10 
		InstructionAddress <= 64'd8; 
		//Instruction sould have memReg[15:12]	 // InstructionAddress = 12
		#10 
		InstructionAddress <= 64'd12; 
	end

	initial
	$monitor("Time = ", $time, " InstructionAddress = ", InstructionAddress, " Instruction = ", Instruction);

endmodule	