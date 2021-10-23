
execute store result score b1 temp run data get storage math:memory input.x1[-1]
execute store result score b2 temp run data get storage math:memory input.x2[-1]

data remove storage math:memory input.x1[-1]
data remove storage math:memory input.x2[-1]

# check if they are equal or not to carry
scoreboard players set carrynext temp 0
execute if score b1 temp = b2 temp run scoreboard players set next temp 0
execute unless score b1 temp = b2 temp run scoreboard players set next temp 1
execute if score b1 temp matches 1 if score b2 temp matches 1 run scoreboard players set carrynext temp 1
# remove carry or carry carry forward
execute if score carry temp matches 1 if score next temp matches 0 run function sha256:functions/add/carryadd
execute if score carry temp matches 1 if score next temp matches 1 run function sha256:functions/add/carrycarry
scoreboard players operation carry temp = carrynext temp
execute if score next temp matches 0 run data modify storage math:memory output prepend value 0
execute if score next temp matches 1 run data modify storage math:memory output prepend value 1

scoreboard players remove i temp 1
execute if score i temp matches 1.. run function sha256:functions/add/rep