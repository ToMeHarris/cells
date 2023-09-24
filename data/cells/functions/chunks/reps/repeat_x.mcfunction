scoreboard players remove .x reps_left 1
scoreboard players operation .blocks_left rep = .max_dimension iter
execute positioned ~1 ~ ~ run function cells:chunks/reps/move_x