# remove items from the list until you get to the ith item.
data remove storage math:memory output[0]
scoreboard players remove i temp 1
execute if score i temp matches 1.. run function sha256:functions/indexlist/rep