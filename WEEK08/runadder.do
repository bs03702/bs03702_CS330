vlog tbadder.v Adder.v

vsim -novopt work.tbadder

view wave

add wave sim:/tbadder/a
add wave sim:/tbadder/b
add wave sim:/tbadder/out

run 250ns