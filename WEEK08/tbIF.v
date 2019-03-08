module tbIF();

        reg clk;
        wire [31:0] inst;
        reg reset;
        
        Instruction_Fetch IF00(clk,reset,inst);
        
        initial
        begin
          #0
          clk = 1'b0;
          reset = 1'd1;
          
          #10
          reset = 1'd0;
          
          
          
        end
        always
          #10 clk = ~clk;
          
      endmodule