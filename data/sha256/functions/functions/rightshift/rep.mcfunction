# remove and append
scoreboard players remove i temp 1
data modify storage math:memory output prepend value 0
data remove storage math:memory output[-1]
execute if score i temp matches 1.. run function sha256:functions/rightshift/rep