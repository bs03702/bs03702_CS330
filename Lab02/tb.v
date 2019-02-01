module tb
  (
  );
  reg [63:0]  a;
  reg  [63:0] b;
  reg sel;
  wire [63:0] data_out;
  Mux mux1
  (
    .a(a),
    .b(b),
    .sel(sel),
    .data_out(data_out)
    
  );
  
  initial
  begin
    sel = 1'b0;
    a = 64'b00;
    b = 64'b1;
  end
   
  always
    begin
      #5 a = 64'b11;
     #10 sel = ~sel;
  end
  
  initial
  $monitor("Time = " , $time , " %d Sel ->" , sel ,"--> output = %d" , data_out);
  
endmodule
    
  