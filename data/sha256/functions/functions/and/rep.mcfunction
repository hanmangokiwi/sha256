# remove and append
scoreboard players remove bitlength temp 1

execute store result score b1 temp run data get storage math:memory input.x1[0]
execute store result score b2 temp run data get storage math:memory input.x2[0]
# check if they are equal or not to xor

data modify storage math:memory output append value 0
execute if score b1 temp matches 1 if score b2 temp matches 1 run data modify storage math:memory output[-1] set value 1

data remove storage math:memory input.x1[0]
data remove storage math:memory input.x2[0]

execute if score bitlength temp matches 1.. run function sha256:functions/and/rep