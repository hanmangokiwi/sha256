#take 32 bits from chunk and put it into word
data modify storage sha256:memory word append from storage sha256:memory chunk[0]
data remove storage sha256:memory chunk[0]
scoreboard players add wi temp 1
execute if score wi temp matches ..31 run function sha256:foreachchunk/splitwords/rep