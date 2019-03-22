#Compiling design modules
vlog ALU_Control.v  Control_Unit.v top_control.v tb3.v
 
#no optimization
vsim -novopt work.tb3
  
#view waves
view wave
  
#Adding waves

add wave sim:/tb3/*


run 250ns