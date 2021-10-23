#append k bits of 0
data modify storage sha256:memory inputcopy append value 0
scoreboard players remove k temp 1
execute if score k temp matches 1.. run function sha256:pad/rep