module tb();

        reg clk;
        reg [63:0] Pin;
        wire [63:0] PCout;
        reg reset;
        
        ProgramCounter mycounter(Pin,PCout,clk,reset);
        
        initial
        begin
          #0
          clk = 1'b0;
          reset = 1'd0;
          Pin = 64'd20;
          #10
          reset = 1'd1;
          #10
          reset = 1'd0;
          Pin = 64'd30;
          
          #10
          Pin  = 64'd40;
          
          
        end
        always
          #10 clk = ~clk;
      endmodule
          