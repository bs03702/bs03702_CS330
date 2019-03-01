module registerFile(
        input wire [63:0] WriteData,
        input wire [4:0] rs1,
        input wire [4:0] rs2,
        input wire [4:0] rd,
        input wire  regWrite,
        input wire clk,
        input reset,
        output reg [63:0] readData1,
        output reg [63:0] readData2
        );
        
        reg[63:0] Registers [31:0];
        integer index;
        integer value = 70;
        initial
        begin
        for (index = 0; index <32; index = index +1)
        begin
        
          Registers[index] = value;
          value = value + 10;
          
        end
        //Registers[1]=64'd1;
      end
        
        always @ (posedge clk & regWrite ==1)
          if (rd !=0)
              Registers[rd] = WriteData;
        else
              Registers[rd] = 64'b0;
        
        always @ (reset or rs1 or rs2)
        begin
          if (reset == 1)
            begin
              readData1 <= 64'b0;
              readData2 <= 64'b0;
          end
          else
            begin
              readData1 <= Registers[rs1];
              readData2 <= Registers[rs2];
          end
        end
  endmodule
        