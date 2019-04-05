module Data_Memory
(
input [63:0] memAdd, writeData,
	input clk, memWrite, memRead,
	output reg [63:0] readData
	);
  
  // Initialising the Array memData
	reg [7:0] memData [63:0];

	
	
	//Puts Random Values in the array
	initial
	begin
	memData[0] = 64'd0;
	memData[1] = 64'd1;
	memData[2] = 64'd2;
	memData[3] = 64'd3;
	memData[4] = 64'd4;
	memData[5] = 64'd5;
	memData[6] = 64'd6;
	memData[7] = 64'd7;
	memData[8] = 64'd8;
	memData[9] = 64'd9;
	memData[10] = 64'd10;
	memData[11] = 64'd11;
	memData[12] = 64'd12;
	memData[13] = 64'd13;
	memData[14] = 64'd14;
	memData[15] = 64'd15;
	memData[16] = 64'd16;
	memData[17] = 64'd17;
	memData[18] = 64'd18;
	memData[19] = 64'd19;
	memData[20] = 64'd20;
	memData[21] = 64'd21;
	memData[22] = 64'd22;
	memData[23] = 64'd23;
	memData[24] = 64'd24;
	memData[25] = 64'd25;
	memData[26] = 64'd26;
	memData[27] = 64'd27;
	memData[28] = 64'd28;
	memData[29] = 64'd29;
	memData[30] = 64'd30;
	memData[31] = 64'd31;
	memData[32] = 64'd32;
	memData[33] = 64'd33;
	memData[34] = 64'd34;
	memData[35] = 64'd35;
	memData[36] = 64'd36;
	memData[37] = 64'd37;
	memData[38] = 64'd38;
	memData[39] = 64'd39;
	memData[40] = 64'd40;
	memData[41] = 64'd41;
	memData[42] = 64'd42;
	memData[43] = 64'd43;
	memData[44] = 64'd44;
		memData[45] = 64'd45;
	memData[46] = 64'd46;
	memData[47] = 64'd47;
	memData[48] = 64'd48;
	memData[49] = 64'd49;
		memData[50] = 64'd50;
	memData[51] = 64'd51;
	memData[52] = 64'd52;
	memData[53] = 64'd53;
	memData[54] = 64'd54;
		memData[55] = 64'd55;
	memData[56] = 64'd56;
	memData[57] = 64'd57;
	memData[58] = 64'd58;
	memData[59] = 64'd59;
		memData[60] = 64'd60;
	memData[61] = 64'd61;
	memData[62] = 64'd62;
	memData[63] = 64'd63;

	end
	
  integer i;

  //Write Data
	always @(posedge clk, memWrite, writeData, memAdd)
	begin
	  //For Loop that runs 8 times
			for (i = 0; i < 8; i = i + 1)
				memData[i + memAdd[7:0]] <= writeData[{7 + i} -: 7];
	end
	
	//ReadOutput Data -> 7 consecutive locations at once
	always @(memRead & memAdd)
	begin
				readData <= {memData[memAdd+7], memData[memAdd+6], memData[memAdd+5], memData[memAdd+4], memData[memAdd+3], memData[memAdd+2], memData[memAdd+1], memData[memAdd]};
	end
	
	endmodule