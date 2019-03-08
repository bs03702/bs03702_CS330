vlog tb.v Data_Memory.v

vsim -novopt work.tb

view wave

add wave sim:/tb/memAdd
add wave sim:/tb/writeData
add wave sim:/tb/clk
add wave sim:/tb/memWrite
add wave sim:/tb/memRead
add wave sim:/tb/readData


run 250ns