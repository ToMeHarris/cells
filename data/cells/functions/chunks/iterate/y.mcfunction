scoreboard players remove .current_y chunk 1
scoreboard players operation .current_z chunk = .size/2 chunk
function cells:chunks/iterate/z
execute if score .current_y chunk matches 1.. positioned ~ ~2 ~ run function cells:chunks/iterate/y