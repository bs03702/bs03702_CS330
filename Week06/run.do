#Compiling design modules
vlog ALU_1_bit.v tb.v
 
#no optimization
vsim -novopt work.tb 
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/CarryIn
add wave sim:/tb/ALUOp
add wave sim:/tb/Result
add wave sim:/tb/CarryOut

 
run 250ns