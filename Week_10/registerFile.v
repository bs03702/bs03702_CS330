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
        
        reg[63:0] register [31:0];
        integer index;
        integer value = 70;
        initial 
    begin
      register[0] =64'd0;
      register[1] =64'd1;
      register[2] =64'd2;
      register[3] =64'd3;
      register[4] =64'd4;
      register[5] =64'd5;
      register[6] =64'd6;
      register[7] =64'd7;
      register[8] =64'd8;
      register[9] =64'd9;
      register[10] =64'd10;
      register[11] =64'd11;
      register[12] =64'd12;
      register[13] =64'd13;
      register[14] =64'd14;
      register[15] =64'd15;
      register[16] =64'd16;
      register[17] =64'd17;
      register[18] =64'd18;
      register[19] =64'd19;
      register[20] =64'd20;
      register[21] =64'd21;
      register[22] =64'd22;
      register[23] =64'd23;
      register[24] =64'd24;
      register[25] =64'd25;
      register[26] =64'd26;
      register[27] =64'd27;
      register[28] =64'd28;
      register[29] =64'd29;
      register[30] =64'd30;
      register[31] =64'd31;
  end
        //Registers[1]=64'd1;     end
        
        always @ (posedge clk )
        if (regWrite==1)
          begin
          if (rd !=0)
              register[rd] = WriteData;
        //else
              //register[rd] = 64'b0;
      end
        always @ (reset or rs1 or rs2)
        begin
          if (reset == 1)
            begin
              readData1 = 64'b0;
              readData2 = 64'b0;
          end
          else
            begin
              readData1 = register[rs1];
              readData2 = register[rs2];
          end
        end
  endmodule
        