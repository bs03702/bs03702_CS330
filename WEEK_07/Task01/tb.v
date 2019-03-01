module tb
  (
  
  );
        reg [63:0] WriteData;
        reg [4:0] rs1;
        reg [4:0] rs2;
        reg [4:0] rd;
        reg  regWrite;
        reg  clk;
        reg reset;
        wire [63:0] readData1;
        wire [63:0] readData2;
   registerFile rf01
   (
      .WriteData(WriteData),
      .rs1(rs1),
      .rs2(rs2),
      .rd(rd),
      .clk(clk),
      .regWrite(regWrite),
      .reset(reset),
      .readData1(readData1),
      .readData2(readData2)
      );
      
      initial
        clk = 1'b0;
      
      always
        #10 clk =~clk;
      
      initial
      begin
        WriteData = 64'd1;
        rs1 = 5'b00001;
        rs2 = 5'b00010;
        rd <= 5'b0;
        reset = 0;            //when rd == 0  write 0
        regWrite =1'b1;
        
        #10
        WriteData = 64'd1;
        rs1 = 5'd9;
        rs2 = 5'b00011;
        rd <= 5'b01001;
        reset = 1'b0;        //when reset == 0   write
        regWrite =1'b1;
        
        #10
      
        rs1 = 5'b00001;
        rs2 = 5'b00011;
                
        #5
        rd = 5'b01011;
        
       #10
       reset = 1'b1;
       
       #10
       reset = 1'b0;
       
      
       
      end
        
    endmodule
      
      
      
      
   