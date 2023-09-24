scoreboard players remove .blocks_left rep 1
#exit condition
execute if score .blocks_left rep matches ..0 run function cells:chunks/reps/loop_x
#loop condition
execute unless score .blocks_left rep matches ..0 positioned ~1 ~ ~ run function cells:chunks/reps/move_x