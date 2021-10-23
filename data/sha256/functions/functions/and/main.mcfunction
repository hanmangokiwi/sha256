# xors storage math:memory input:{x1,x2} to math:memory output
# assume the arrays are the same size because it probably will break lmao
# clear output
data remove storage math:memory output

execute store result score bitlength temp if data storage math:memory input.x1[]

execute if score bitlength temp matches 1.. run function sha256:functions/and/rep