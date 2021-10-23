scoreboard players add bitlength temp 1

scoreboard players operation binarycopy temp = binary math
scoreboard players operation binarycopy temp %= 2 constant

execute if score binarycopy temp matches 0 run data modify storage math:memory output prepend value 0
execute if score binarycopy temp matches 1 run data modify storage math:memory output prepend value 1

scoreboard players operation binary math /= 2 constant
execute if score binary math matches 1.. run function sha256:functions/decimaltobinary/rep