module tbtop(

);

    reg [31:0] instruction;
    wire [63:0] readData1, readData2;

    top myTop(instruction, readData1, readData2);

    initial
    begin
      #0 
      instruction <= 32'b0;
      
      //rs2 is register 30 and rs1 is register 31
      #10 
      instruction <= 32'b00000001111011111000000000000000;  
      
      //rs2 is register 28 and rs1 is register 29
      #10
      instruction <= 32'b00000001110011101000000000000000; 
      
      //rs2 is register 14 and rs1 is register 15 
      #10 
      instruction <= 32'b00000000111001111000000000000000;  
    end 

    initial
    $monitor("Time = ",$time, " instruction = ",instruction, " readData1 = ", readData1, " readData2 = ", readData2);

endmodule