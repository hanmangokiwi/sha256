# push the chunk back chunk and delete it from chunks
data modify storage sha256:memory chunk set from storage sha256:memory chunks[0]
data remove storage sha256:memory chunks[0]

# split the 512 bits into 16 chunks of 32 bits
function sha256:foreachchunk/splitwords/main

# create 48 more words using items from 16
function sha256:foreachchunk/makewords/main

#compression
function sha256:foreachchunk/compression/main

execute if data storage sha256:memory chunks[] run function sha256:foreachchunk/foreach