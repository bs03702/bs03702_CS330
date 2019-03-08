module Instruction_Fetch(clk,reset,inst);
  input clk;
  input reset;
  output [31:0] inst;
  
  wire [63:0] PCout,out;
  wire [63:0] b = 64'd4;
  
  ProgramCounter pc(out,PCout,clk,reset);
  Adder myadder(PCout,b,out);
  Instruction_Memory instmem(PCout,inst);
  
endmodule
  
  
  