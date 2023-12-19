scoreboard players remove .current_x chunk 1
scoreboard players operation .current_y chunk = .size/2 chunk
function cells:chunks/iterate/y
execute if score .current_x chunk matches 1.. positioned ~2 ~ ~ run function cells:chunks/iterate/x