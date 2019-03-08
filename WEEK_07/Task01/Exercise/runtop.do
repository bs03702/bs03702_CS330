vlog tbtop.v instruction_parser.v registerFile.v top.v

vsim -novopt work.tbtop

view wave

add wave sim:/tbtop/instruction
add wave sim:/tbtop/readData1
add wave sim:/tbtop/readData2

run 100ns