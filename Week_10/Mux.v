module Mux (a , b, sel , data_out );
  
  input [63:0]  a;
  input [63:0] b;
  input wire sel ;
  output reg [63:0] data_out;
 
  
  always @ ( sel or a or b )
    begin
      if (sel == 1)
        data_out <= b ;
      else
        data_out <= a;
    end
endmodule  
  
