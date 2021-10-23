#data modify storage math:memory input.x1 set value [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1]
#data modify storage math:memory input.x2 set value [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0]
# should get 10000000000000011111001 or something
#clear output
data remove storage math:memory output

# 32 bit unsigned int adder
# adds input.x1 and input.x2 from math:memory together to output. Output is calculated mod 2^32

scoreboard players set i temp 32
scoreboard players set carry temp 0
function sha256:functions/add/rep