data remove storage sha256:memory word[]

scoreboard players set wi temp 0
function sha256:foreachchunk/splitwords/rep
data modify storage sha256:memory words append from storage sha256:memory word

scoreboard players add wi2 temp 1
execute if score wi2 temp matches ..15 run function sha256:foreachchunk/splitwords/splitword