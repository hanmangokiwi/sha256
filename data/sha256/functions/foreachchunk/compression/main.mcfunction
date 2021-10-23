#initialize working variables to current hash value whatever that means
data modify storage sha256:memory h2 set from storage sha256:memory h
scoreboard players set j temp 0
function sha256:foreachchunk/compression/rep

# h[i]=h[i]+h2[i]
# you may be asking why I didn't use a for loop for this. Minecraft doesn't have for loops lmao
data modify storage math:memory input.x1 set from storage sha256:memory h[0]
data modify storage math:memory input.x2 set from storage sha256:memory h2[0]
function sha256:functions/add/main
data modify storage sha256:memory h[0] set from storage math:memory output

data modify storage math:memory input.x1 set from storage sha256:memory h[1]
data modify storage math:memory input.x2 set from storage sha256:memory h2[1]
function sha256:functions/add/main
data modify storage sha256:memory h[1] set from storage math:memory output

data modify storage math:memory input.x1 set from storage sha256:memory h[2]
data modify storage math:memory input.x2 set from storage sha256:memory h2[2]
function sha256:functions/add/main
data modify storage sha256:memory h[2] set from storage math:memory output

data modify storage math:memory input.x1 set from storage sha256:memory h[3]
data modify storage math:memory input.x2 set from storage sha256:memory h2[3]
function sha256:functions/add/main
data modify storage sha256:memory h[3] set from storage math:memory output

data modify storage math:memory input.x1 set from storage sha256:memory h[4]
data modify storage math:memory input.x2 set from storage sha256:memory h2[4]
function sha256:functions/add/main
data modify storage sha256:memory h[4] set from storage math:memory output

data modify storage math:memory input.x1 set from storage sha256:memory h[5]
data modify storage math:memory input.x2 set from storage sha256:memory h2[5]
function sha256:functions/add/main
data modify storage sha256:memory h[5] set from storage math:memory output

data modify storage math:memory input.x1 set from storage sha256:memory h[6]
data modify storage math:memory input.x2 set from storage sha256:memory h2[6]
function sha256:functions/add/main
data modify storage sha256:memory h[6] set from storage math:memory output

data modify storage math:memory input.x1 set from storage sha256:memory h[7]
data modify storage math:memory input.x2 set from storage sha256:memory h2[7]
function sha256:functions/add/main
data modify storage sha256:memory h[7] set from storage math:memory output