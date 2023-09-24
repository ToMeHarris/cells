#end condition
execute if score .x offset matches ..0 if score .z offset matches ..0 run function cells:chunks/reps/start_x

#increase offset
execute if score .x offset matches ..0 unless score .z offset matches ..0 run function cells:chunks/offset/move_z
execute unless score .x offset matches ..0 run function cells:chunks/offset/move_x