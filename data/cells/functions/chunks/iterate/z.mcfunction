scoreboard players remove .current_z chunk 1
# tellraw @p [{"score":{"name":".current_x","objective":"chunk"}},",",{"score":{"name":".current_y","objective":"chunk"}},",",{"score":{"name":".current_z","objective":"chunk"}}]
# particle soul_fire_flame
function cells:simulate/block
execute if score .current_z chunk matches 1.. positioned ~ ~ ~2 run function cells:chunks/iterate/z