
# rightrotate e by 6 then save it to tempx1
data modify storage math:memory input.x1 set from storage sha256:memory h2[4]
scoreboard players set i math 6
function sha256:functions/rightrotate/main
data modify storage math:memory temp.x1 set from storage math:memory output

# rightrotate e by 11, save it directly to input.x2
data modify storage math:memory input.x1 set from storage sha256:memory h2[4]
scoreboard players set i math 11
function sha256:functions/rightrotate/main
data modify storage math:memory input.x2 set from storage math:memory output

#xor temp.x1 and input.x2, save it to temp.x1
data modify storage math:memory input.x1 set from storage math:memory temp.x1
function sha256:functions/xor/main
data modify storage math:memory temp.x1 set from storage math:memory output

# rightrotate e by 25, save it directly to input.x2
data modify storage math:memory input.x1 set from storage sha256:memory h2[4]
scoreboard players set i math 25
function sha256:functions/rightrotate/main
data modify storage math:memory input.x2 set from storage math:memory output

# xor input.x2 and temp.x1, save to temp.x1
data modify storage math:memory input.x1 set from storage math:memory temp.x1
function sha256:functions/xor/main
# save S1 as temp.x1
data modify storage math:memory temp.x1 set from storage math:memory output

# e and f
data modify storage math:memory input.x1 set from storage sha256:memory h2[4]
data modify storage math:memory input.x2 set from storage sha256:memory h2[5]
function sha256:functions/and/main
# save as temp.x2
data modify storage math:memory temp.x2 set from storage math:memory output

# not e = e xor 11111111111111111
data modify storage math:memory input.x1 set from storage sha256:memory h2[4]
data modify storage math:memory input.x2 set value [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
function sha256:functions/xor/main
# put directly into input.x1
data modify storage math:memory input.x1 set from storage math:memory output

# (not e) and g
data modify storage math:memory input.x2 set from storage sha256:memory h2[6]
function sha256:functions/and/main
# put directly into input.x2
data modify storage math:memory input.x2 set from storage math:memory output

# xor both of these
data modify storage math:memory input.x1 set from storage math:memory temp.x2
function sha256:functions/xor/main
# save ch as temp.x2
data modify storage math:memory temp.x2 set from storage math:memory output

# get k[j], save it as temp.x3
scoreboard players operation i math = j temp
data modify storage math:memory input.x1 set from storage sha256:constant cbrt
function sha256:functions/indexlist/main
data modify storage math:memory temp.x3 set from storage math:memory output

#get w[j], save it as temp.x4
scoreboard players operation i math = j temp
data modify storage math:memory input.x1 set from storage sha256:memory words
function sha256:functions/indexlist/main
data modify storage math:memory temp.x4 set from storage math:memory output

# add temp.x1-temp.x4 and h2[7] together, save it as temp.x5, which is temp1 in wikipedia
data modify storage math:memory input.x1 set from storage sha256:memory h2[7]
data modify storage math:memory input.x2 set from storage math:memory temp.x1
function sha256:functions/add/main
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x2
function sha256:functions/add/main
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x3
function sha256:functions/add/main
data modify storage math:memory input.x1 set from storage math:memory output
data modify storage math:memory input.x2 set from storage math:memory temp.x4
function sha256:functions/add/main
data modify storage math:memory temp.x5 set from storage math:memory output

#################################

# rightrotate a by 2 then save it to tempx1
data modify storage math:memory input.x1 set from storage sha256:memory h2[0]
scoreboard players set i math 2
function sha256:functions/rightrotate/main
data modify storage math:memory temp.x1 set from storage math:memory output

# rightrotate a by 13, save it directly to input.x2
data modify storage math:memory input.x1 set from storage sha256:memory h2[0]
scoreboard players set i math 13
function sha256:functions/rightrotate/main
data modify storage math:memory input.x2 set from storage math:memory output

#xor temp.x1 and input.x2, save it to temp.x1
data modify storage math:memory input.x1 set from storage math:memory temp.x1
function sha256:functions/xor/main
data modify storage math:memory temp.x1 set from storage math:memory output

# rightrotate a by 22, save it directly to input.x2
data modify storage math:memory input.x1 set from storage sha256:memory h2[0]
scoreboard players set i math 22
function sha256:functions/rightrotate/main
data modify storage math:memory input.x2 set from storage math:memory output

# xor input.x2 and temp.x1, save to temp.x1
data modify storage math:memory input.x1 set from storage math:memory temp.x1
function sha256:functions/xor/main
# save S0 as temp.x1
data modify storage math:memory temp.x1 set from storage math:memory output

# a and b
data modify storage math:memory input.x1 set from storage sha256:memory h2[0]
data modify storage math:memory input.x2 set from storage sha256:memory h2[1]
function sha256:functions/and/main
# save as temp.x2
data modify storage math:memory temp.x2 set from storage math:memory output

# a and c
data modify storage math:memory input.x1 set from storage sha256:memory h2[0]
data modify storage math:memory input.x2 set from storage sha256:memory h2[2]
function sha256:functions/and/main
# put directly into input.x2
data modify storage math:memory input.x2 set from storage math:memory output

# xor both of these
data modify storage math:memory input.x1 set from storage math:memory temp.x2
function sha256:functions/xor/main
# save as temp.x2
data modify storage math:memory temp.x2 set from storage math:memory output

# b and c
data modify storage math:memory input.x1 set from storage sha256:memory h2[1]
data modify storage math:memory input.x2 set from storage sha256:memory h2[2]
function sha256:functions/and/main
# put directly into input.x2
data modify storage math:memory input.x2 set from storage math:memory output

# xor temp.x2 and input.x2
data modify storage math:memory input.x1 set from storage math:memory temp.x2
function sha256:functions/xor/main
# save maj as temp.x2
data modify storage math:memory temp.x2 set from storage math:memory output

# add temp.x1 and temp.x2 together, save it as temp.x6, which is temp1 in wikipedia
data modify storage math:memory input.x1 set from storage math:memory temp.x1
data modify storage math:memory input.x2 set from storage math:memory temp.x2
function sha256:functions/add/main
data modify storage math:memory temp.x6 set from storage math:memory output
# temp.x5 = temp1, temp.x6 = temp2






# switcharoo
data modify storage sha256:memory h2[7] set from storage sha256:memory h2[6]
data modify storage sha256:memory h2[6] set from storage sha256:memory h2[5]
data modify storage sha256:memory h2[5] set from storage sha256:memory h2[4]
# e:= d+temp1
data modify storage math:memory input.x1 set from storage sha256:memory h2[3]
data modify storage math:memory input.x2 set from storage math:memory temp.x5
function sha256:functions/add/main
data modify storage sha256:memory h2[4] set from storage math:memory output
# switcharoo continued
data modify storage sha256:memory h2[3] set from storage sha256:memory h2[2]
data modify storage sha256:memory h2[2] set from storage sha256:memory h2[1]
data modify storage sha256:memory h2[1] set from storage sha256:memory h2[0]
# a:=temp1+temp2
data modify storage math:memory input.x1 set from storage math:memory temp.x5
data modify storage math:memory input.x2 set from storage math:memory temp.x6
function sha256:functions/add/main
data modify storage sha256:memory h2[0] set from storage math:memory output






scoreboard players add j temp 1
execute if score j temp matches ..63 run function sha256:foreachchunk/compression/rep

