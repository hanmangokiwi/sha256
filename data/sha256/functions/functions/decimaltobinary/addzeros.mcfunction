data modify storage math:memory output prepend value 0
scoreboard players remove addzeros temp 1
execute if score addzeros temp matches 1.. run function sha256:functions/decimaltobinary/addzeros