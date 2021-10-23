# get the ith item (math i) of input.x1 in math:memory list
scoreboard players operation i temp = i math
data modify storage math:memory output set from storage math:memory input.x1
execute if score i temp matches 1.. run function sha256:functions/indexlist/rep
data modify storage math:memory output set from storage math:memory output[0]