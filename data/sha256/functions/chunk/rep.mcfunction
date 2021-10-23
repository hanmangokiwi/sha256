scoreboard players add binarycopy temp 1
scoreboard players remove L temp 1

data modify storage sha256:memory chunk append from storage sha256:memory inputcopy[0]
data remove storage sha256:memory inputcopy[0]
execute if score binarycopy temp matches 512 run function sha256:chunk/pushchunk
execute if score L temp matches 1.. run function sha256:chunk/rep