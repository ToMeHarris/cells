#tellraw @a ["cur_iter: x=",{"score":{"name":".x","objective":"cur_iter"}},", z=",{"score":{"name":".z","objective":"cur_iter"}}]

scoreboard players operation .x_offset cur_iter = .i cur_iter
scoreboard players operation .x_offset cur_iter %= .max_dimension iter
scoreboard players operation .z_offset cur_iter = .i cur_iter
scoreboard players operation .z_offset cur_iter /= .max_dimension iter

#navigate to offset
execute at @e[tag=chunk] run function cells:chunks/offset/start

#increment iteration
scoreboard players add .i cur_iter 1
execute if score .i cur_iter >= .cycles iter run scoreboard players set .i cur_iter 0