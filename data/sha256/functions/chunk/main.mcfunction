# figure out how long the whole thing is
execute store result score L temp if data storage sha256:memory inputcopy[]

data modify storage sha256:memory chunks set value []
data modify storage sha256:memory chunk set value []
scoreboard players set binarycopy temp 0
function sha256:chunk/rep