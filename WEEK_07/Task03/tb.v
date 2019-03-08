module tb(

);

    reg [63:0] memAdd, writeData;
	 reg clk, memWrite, memRead;
	 wire [63:0] readData;

    Data_Memory Mem001
    (
      .memAdd(memAdd), 
      .writeData(writeData), 
      .clk(clk), 
      .memWrite(memWrite), 
      .memRead(memRead), 
      .readData(readData)
      );

    initial
    begin
       
      clk = 1'b0;
     
      memRead = 1'b1;
      memWrite = 1'b0;
      writeData = 64'd699050;
      //read 
      
      memAdd = 64'b0;    
      #5
      memAdd = 64'd10;    
      #5 
      memAdd = 64'd15;    
      #5 
      memRead = 1'd0;  
        
      // write 
      memAdd = 64'd0;
      
      #10 
      memWrite = 1'd1;   
      #10 
      memAdd = 64'd16;    
      #10 
      memAdd = 64'd8;    
         
    end

    always
    #5 clk = ~clk;

    
endmodule