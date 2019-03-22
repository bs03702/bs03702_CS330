#Compiling design modules
vlog Control_Unit.v  tb.v
 
#no optimization
vsim -novopt work.tb 
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb/*


run 250ns