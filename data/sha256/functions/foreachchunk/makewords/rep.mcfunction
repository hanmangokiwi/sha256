# get the j-15th item of words
data modify storage math:memory input.x1 set from storage sha256:memory words
scoreboard players operation i math = j temp
scoreboard players remove i math 15
function sha256:functions/indexlist/main
# save it to x1
data modify storage math:memory temp.x1 set from storage math:memory output

# then rightrotate it by 7
data modify storage math:memory input.x1 set from storage math:memory temp.x1
scoreboard players set i math 7
function sha256:functions/rightrotate/main
# save the result to x2
data modify storage math:memory temp.x2 set from storage math:memory output

# grab the j-15th item of words again
data modify storage math:memory input.x1 set from storage math:memory temp.x1
# then rightrotate it by 18
scoreboard players set i math 18
function sha256:functions/rightrotate/main

#xor both, save prev output directly to inputx1, push output to temp.x2
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x2
function sha256:functions/xor/main
data modify storage math:memory temp.x2 set from storage math:memory output

# grab the j-15th item of words again (I swear it's the last time)
data modify storage math:memory input.x1 set from storage math:memory temp.x1
# then rightrotate it by 3
scoreboard players set i math 3
function sha256:functions/rightshift/main

# xor temp.x2 and output together and save the result to temp.x3
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x2
function sha256:functions/xor/main
data modify storage math:memory temp.x3 set from storage math:memory output

#####################################################################

# do the exact same thing except with some different numbers ()

# get the j-2th item of words
data modify storage math:memory input.x1 set from storage sha256:memory words
scoreboard players operation i math = j temp
scoreboard players remove i math 2
function sha256:functions/indexlist/main
# save it to x1
data modify storage math:memory temp.x1 set from storage math:memory output

# then rightrotate it by 17
data modify storage math:memory input.x1 set from storage math:memory temp.x1
scoreboard players set i math 17
function sha256:functions/rightrotate/main
# save the result to x2
data modify storage math:memory temp.x2 set from storage math:memory output

# grab the j-2th item of words again
data modify storage math:memory input.x1 set from storage math:memory temp.x1
# then rightrotate it by 19
scoreboard players set i math 19
function sha256:functions/rightrotate/main

#xor both, save prev output directly to inputx1, push output to temp.x2
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x2
function sha256:functions/xor/main
data modify storage math:memory temp.x2 set from storage math:memory output

# grab the j-2th item of words again (I swear it's the last time)
data modify storage math:memory input.x1 set from storage math:memory temp.x1
# then rightrotate it by 10
scoreboard players set i math 10
function sha256:functions/rightshift/main

# xor temp.x2 and output together and save the result to temp.x4
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x2
function sha256:functions/xor/main
data modify storage math:memory temp.x4 set from storage math:memory output

# in wikipedia this was like 2 lines and in minecraft it's like 60 :cryglasses:

# fr tho on wikipedia the whole thing I just wrote is:
#   s0 := (w[i-15] rightrotate  7) xor (w[i-15] rightrotate 18) xor (w[i-15] rightshift  3)
#   s1 := (w[i- 2] rightrotate 17) xor (w[i- 2] rightrotate 19) xor (w[i- 2] rightshift 10)

#anyways...

# get the j-16th item of words
data modify storage math:memory input.x1 set from storage sha256:memory words
scoreboard players operation i math = j temp
scoreboard players remove i math 16
function sha256:functions/indexlist/main
# save it to x1
data modify storage math:memory temp.x1 set from storage math:memory output


# get the j-7th item of words
data modify storage math:memory input.x1 set from storage sha256:memory words
scoreboard players operation i math = j temp
scoreboard players remove i math 7
function sha256:functions/indexlist/main
# save it to x2
data modify storage math:memory temp.x2 set from storage math:memory output


# add temp.x1,x2,x3,x4 together and that is your word
data modify storage math:memory input.x1 set from storage math:memory temp.x1
data modify storage math:memory input.x2 set from storage math:memory temp.x2
function sha256:functions/add/main
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x3
function sha256:functions/add/main
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x4
function sha256:functions/add/main
data modify storage sha256:memory words append from storage math:memory output
scoreboard players add j temp 1
execute if score j temp matches ..63 run function sha256:foreachchunk/makewords/rep