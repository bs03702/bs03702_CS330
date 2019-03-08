vlog tb.v ProgramCounter.v

vsim -novopt work.tb

view wave

add wave sim:/tb/*

run 250ns