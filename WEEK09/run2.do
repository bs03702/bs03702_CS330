#Compiling design modules
vlog ALU_Control.v  tb2.v
 
#no optimization
vsim -novopt work.tb2 
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb2/*


run 250ns