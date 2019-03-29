#Compiling design modules
vlog ALU_Control.v  Control_Unit.v Data_Memory.v immediate_data_extractor.v Instruction_Memory.v instruction_parser.v Mux.v ProgramCounter.v registerFile.v SingleCycleProcessor.v  tb.v Adder.v ALU_64_bit.v 
 
#no optimization
vsim -novopt work.tb
  
do wave.do



run 250ns