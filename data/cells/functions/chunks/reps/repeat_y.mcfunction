scoreboard players remove .y reps_left 1
scoreboard players operation .blocks_left rep = .len iter
execute positioned ~ ~1 ~ run function cells:chunks/reps/move_y