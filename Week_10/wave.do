onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /tb/CPU/clk
add wave -noupdate -format Logic -radix unsigned /tb/CPU/reset
add wave -noupdate -divider PC
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Pc/Pin
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Pc/PCout
add wave -noupdate -divider {Instruction memory}
add wave -noupdate -format Literal -radix unsigned /tb/CPU/IM/InstructionAddress
add wave -noupdate -format Literal -radix unsigned /tb/CPU/IM/Instruction
add wave -noupdate -divider {ALU Main}
add wave -noupdate -format Literal -radix unsigned /tb/CPU/ALU_Main/a
add wave -noupdate -format Literal -radix unsigned /tb/CPU/ALU_Main/b
add wave -noupdate -format Literal -radix binary /tb/CPU/ALU_Main/ALUOp
add wave -noupdate -format Literal -radix unsigned /tb/CPU/ALU_Main/Result
add wave -noupdate -format Logic -radix unsigned /tb/CPU/ALU_Main/Zero
add wave -noupdate -divider {Data Mem}
add wave -noupdate -format Literal -radix unsigned /tb/CPU/DM/memAdd
add wave -noupdate -format Literal -radix unsigned /tb/CPU/DM/writeData
add wave -noupdate -format Logic -radix unsigned /tb/CPU/DM/memWrite
add wave -noupdate -format Logic -radix unsigned /tb/CPU/DM/memRead
add wave -noupdate -format Literal -radix unsigned /tb/CPU/DM/readData
add wave -noupdate -divider {Inst Parser}
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Inst_Par/instruction
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Inst_Par/opcode
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Inst_Par/rd
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Inst_Par/funct3
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Inst_Par/rs1
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Inst_Par/rs2
add wave -noupdate -format Literal -radix unsigned /tb/CPU/Inst_Par/funct7
add wave -noupdate -divider {Control Unit}
add wave -noupdate -format Literal /tb/CPU/CU/Opcode
add wave -noupdate -format Literal /tb/CPU/CU/ALUOp
add wave -noupdate -format Logic /tb/CPU/CU/MemRead
add wave -noupdate -format Logic /tb/CPU/CU/MemtoReg
add wave -noupdate -format Logic /tb/CPU/CU/Branch
add wave -noupdate -format Logic /tb/CPU/CU/MemWrite
add wave -noupdate -format Logic /tb/CPU/CU/ALUSrc
add wave -noupdate -format Logic /tb/CPU/CU/RegWrite
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15 ns} 0}
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
WaveRestoreZoom {0 ns} {60 ns}
