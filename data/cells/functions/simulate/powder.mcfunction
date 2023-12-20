# powder fall
execute if block ~ ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~ replace move
# powder roll
execute if block ~ ~ ~1 air if block ~ ~-1 ~1 air run clone ~ ~ ~ ~ ~ ~ ~ ~ ~1 replace move
execute if block ~ ~ ~-1 air if block ~ ~-1 ~-1 air run clone ~ ~ ~ ~ ~ ~ ~ ~ ~-1 replace move
execute if block ~1 ~ ~ air if block ~1 ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ replace move
execute if block ~-1 ~ ~ air if block ~-1 ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~-1 ~ ~ replace move