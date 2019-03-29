onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/CPU/clk
add wave -noupdate -format Logic /tb/CPU/reset
add wave -noupdate -divider ProgramCounter
add wave -noupdate -format Literal /tb/CPU/w_PC_Out
add wave -noupdate -format Literal /tb/CPU/w_instruction
add wave -noupdate -divider parser
add wave -noupdate -format Literal /tb/CPU/w_opcode
add wave -noupdate -format Literal /tb/CPU/w_rs1
add wave -noupdate -format Literal /tb/CPU/w_rs2
add wave -noupdate -format Literal /tb/CPU/w_rd
add wave -noupdate -format Literal /tb/CPU/w_imm_data
add wave -noupdate -format Literal /tb/CPU/w_ReadData1
add wave -noupdate -format Literal /tb/CPU/w_ReadData2
add wave -noupdate -format Logic /tb/CPU/w_Branch
add wave -noupdate -format Logic /tb/CPU/w_MemRead
add wave -noupdate -format Logic /tb/CPU/w_MemtoReg
add wave -noupdate -format Literal /tb/CPU/w_ALUOp
add wave -noupdate -format Logic /tb/CPU/w_MemWrite
add wave -noupdate -format Logic /tb/CPU/w_ALUSrc
add wave -noupdate -format Logic /tb/CPU/w_RegWrite
add wave -noupdate -format Literal /tb/CPU/w_Operation
add wave -noupdate -format Literal /tb/CPU/w_ReadData
add wave -noupdate -format Literal /tb/CPU/w_ALU_PC_4
add wave -noupdate -format Literal /tb/CPU/w_ALU_Branch
add wave -noupdate -format Literal /tb/CPU/w_ALU_Main
add wave -noupdate -format Literal /tb/CPU/w_MUX_Branch
add wave -noupdate -format Literal /tb/CPU/w_MUX_DM
add wave -noupdate -format Literal /tb/CPU/w_MUX_Offset
add wave -noupdate -format Logic /tb/CPU/w_Zero
add wave -noupdate -format Literal /tb/CPU/w_funct7
add wave -noupdate -format Literal /tb/CPU/w_funct3
add wave -noupdate -format Literal /tb/CPU/Registers/WriteData
add wave -noupdate -format Literal /tb/CPU/Registers/WriteData
add wave -noupdate -format Literal /tb/CPU/Registers/rs1
add wave -noupdate -format Literal /tb/CPU/Registers/rs2
add wave -noupdate -format Literal /tb/CPU/Registers/rd
add wave -noupdate -format Logic /tb/CPU/Registers/regWrite
add wave -noupdate -format Logic /tb/CPU/Registers/clk
add wave -noupdate -format Logic /tb/CPU/Registers/reset
add wave -noupdate -format Literal /tb/CPU/Registers/readData1
add wave -noupdate -format Literal /tb/CPU/Registers/readData2
add wave -noupdate -format Literal /tb/CPU/Registers/index
add wave -noupdate -format Literal /tb/CPU/Registers/value
add wave -noupdate -format Literal /tb/CPU/DM/memAdd
add wave -noupdate -format Literal /tb/CPU/DM/writeData
add wave -noupdate -format Logic /tb/CPU/DM/clk
add wave -noupdate -format Logic /tb/CPU/DM/memWrite
add wave -noupdate -format Logic /tb/CPU/DM/memRead
add wave -noupdate -format Literal /tb/CPU/DM/readData
add wave -noupdate -format Literal /tb/CPU/DM/index
add wave -noupdate -format Literal /tb/CPU/DM/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {16 ns} 0}
configure wave -namecolwidth 235
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {211 ns}
