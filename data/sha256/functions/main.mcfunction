#refer to https://en.wikipedia.org/wiki/SHA-2 if you want to understand what is happening


#data modify storage sha256:memory input set value [1,0,0,1]

function sha256:pad/main

function sha256:chunk/main

# copy constants
data modify storage sha256:memory h set from storage sha256:constant sqrt

function sha256:foreachchunk/main

data modify storage sha256:memory output set from storage sha256:memory h[0]
data modify storage sha256:memory output append from storage sha256:memory h[1][]
data modify storage sha256:memory output append from storage sha256:memory h[2][]
data modify storage sha256:memory output append from storage sha256:memory h[3][]
data modify storage sha256:memory output append from storage sha256:memory h[4][]
data modify storage sha256:memory output append from storage sha256:memory h[5][]
data modify storage sha256:memory output append from storage sha256:memory h[6][]
data modify storage sha256:memory output append from storage sha256:memory h[7][]
