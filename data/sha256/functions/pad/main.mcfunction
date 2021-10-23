data modify storage sha256:memory inputcopy set from storage sha256:memory input

#get the length of the original input, L
execute store result score L temp if data storage sha256:memory inputcopy[]
#append single 1 bit
data modify storage sha256:memory inputcopy append value 1


# append k '0' bits such that L+1+K+64 is a multiple of 512

# figure out the value for k
# this should be 65 to leave 64 bits but (explanation below)
scoreboard players set k1 temp 32
scoreboard players operation k1 temp += L temp
execute if score k1 temp matches 512.. run scoreboard players operation k1 temp %= 512 constant
scoreboard players set k temp 512
scoreboard players operation k temp -= k1 temp

# append the k bits if k is greater than 0
execute if score k temp matches 1.. run function sha256:pad/rep

# append L as a 64-bit bit-endian integer (fancy way of saying 64-bit normal looking binary thing lol)
# scoreboards are only 31 bit (excluding sign) so the first 33 bits are just going to be 0.
# also no way the message is going to be more than 2^31 bits (270MB) lol so its all g

scoreboard players operation binary math = L temp
function sha256:functions/decimaltobinary/main
data modify storage sha256:memory inputcopy append from storage math:memory output[]

# now you have a padded multiple of 512 bit number