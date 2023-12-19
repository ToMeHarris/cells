# powder fall
execute if block ~ ~ ~ #cells:powder if block ~ ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~ replace move
# powder roll
execute if block ~ ~ ~ #cells:powder rotated 0 0 run function cells:simulate/movements/try_roll
execute if block ~ ~ ~ #cells:powder rotated 90 0 run function cells:simulate/movements/try_roll
execute if block ~ ~ ~ #cells:powder rotated 180 0 run function cells:simulate/movements/try_roll
execute if block ~ ~ ~ #cells:powder rotated 270 0 run function cells:simulate/movements/try_roll