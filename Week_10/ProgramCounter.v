module ProgramCounter(Pin,PCout,clk,reset);
        input clk;
        input [63:0] Pin;
        output reg [63:0] PCout;
        input reset;
        
        initial
        begin
          PCout = 0;
        end
        
        always @(posedge clk)
        begin
        if (reset == 1)
              PCout <= 0;
        else
            PCout <= Pin;
        end
        always@(reset)
          PCout = 64'b0;
        
    endmodule
        
