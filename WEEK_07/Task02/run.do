vlog tb.v  Instruction_Memory.v tb.v 

vsim -novopt work.tb

view wave

add wave sim:/tb/*
run 100ns