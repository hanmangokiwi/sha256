# rotates stoage math:memory input.x1 by objective i math
scoreboard players operation i temp = i math
data modify storage math:memory output set from storage math:memory input.x1
execute if score i temp matches 1.. run function sha256:functions/rightrotate/rep