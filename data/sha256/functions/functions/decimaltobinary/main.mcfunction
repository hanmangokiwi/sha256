# does math on objective binary math output as storage math:memory output

#clear output
data modify storage math:memory output set value []
# start recursion
# check length
scoreboard players set bitlength temp 0
# gets the number in binary
function sha256:functions/decimaltobinary/rep

# prepend 0s so the length is 31
scoreboard players set addzeros temp 31
scoreboard players operation addzeros temp -= bitlength temp

function sha256:functions/decimaltobinary/addzeros