#Compiling design modules
vlog immediate_data_extractor.v tb2.v
 
#no optimization
vsim -novopt work.tb2 
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb2/instruction
add wave sim:/tb2/imm_data


 
run 250ns
