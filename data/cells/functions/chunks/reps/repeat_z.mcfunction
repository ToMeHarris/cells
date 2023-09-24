scoreboard players remove .z reps_left 1
scoreboard players operation .blocks_left rep = .min_dimension iter
execute positioned ~ ~ ~1 run function cells:chunks/reps/move_z