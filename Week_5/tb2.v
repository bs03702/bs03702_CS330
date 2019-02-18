module tb2
  (
  
  );
 wire [63:0] imm_data;
  reg [31:0] instruction;
  
  immediate_data_extractor ide
    (
    .imm_data(data),
    .instruction(instruction)
  );
  initial 
    begin
      instruction = 32'b10101010101010101010101010001010; //00
      #10
      instruction = 32'b10101010101010101010101010101010; //10
      #10
      instruction = 32'b10101010101000001010101010101010; //10
    end
endmodule
  
  
