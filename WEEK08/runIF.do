vlog tbIF.v Instruction_Fetch.v Instruction_Memory.v

vsim -novopt work.tbIF

view wave

add wave sim:/tbIF/clk
add wave sim:/tbIF/reset
add wave sim:/tbIF/inst
add wave sim:/tbIF/IF00/*
add wave sim:/tbIF/IF00/pc/*
add wave sim:/tbIF/IF00/myadder/*
add wave sim:/tbIF/IF00/instmem/*

run 250ns