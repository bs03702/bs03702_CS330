module tbadder();

        reg [63:0] a;
        reg [63:0] b;
        wire [63:0] out;
        
        
        Adder myadder(a,b,out);
        
        initial
        begin
          #0
          a = 64'b0;
          b = 64'b100;
          
          #10
          a = 64'd10;
          
          #10
          a = 64'd20;
          
        end
        
      endmodule
          