scoreboard players operation .until_next_step time = .timestep options
scoreboard players add .steps time 1

# Simulate chunk around player
scoreboard players operation .phase chunk = .steps time
scoreboard players operation .phase chunk %= .2 constants
execute if score .phase chunk matches 0 at @p positioned ~-24 ~-24 ~-24 run function cells:chunks/simulate_chunk
execute if score .phase chunk matches 1 at @p positioned ~-24 ~-24 ~-24 positioned ~1 ~ ~ run function cells:chunks/simulate_chunk