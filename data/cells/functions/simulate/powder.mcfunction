# powder fall
execute if block ~ ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~ replace move
# powder roll
execute rotated 0 0 run function cells:simulate/movements/try_roll
execute rotated 90 0 run function cells:simulate/movements/try_roll
execute rotated 180 0 run function cells:simulate/movements/try_roll
execute rotated 270 0 run function cells:simulate/movements/try_roll

# improvements/optimizations
# 1. use performance mods