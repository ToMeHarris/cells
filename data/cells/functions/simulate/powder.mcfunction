scoreboard players set .success simulation 0

# powder fall
execute store success score .success simulation if block ~ ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~ replace move
# powder roll
execute unless score .success simulation matches 1 store success score .success simulation if block ~ ~ ~1 air if block ~ ~-1 ~1 air run clone ~ ~ ~ ~ ~ ~ ~ ~ ~1 replace move
execute unless score .success simulation matches 1 store success score .success simulation if block ~ ~ ~-1 air if block ~ ~-1 ~-1 air run clone ~ ~ ~ ~ ~ ~ ~ ~ ~-1 replace move
execute unless score .success simulation matches 1 store success score .success simulation if block ~1 ~ ~ air if block ~1 ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~1 ~ ~ replace move
execute unless score .success simulation matches 1 store success score .success simulation if block ~-1 ~ ~ air if block ~-1 ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~-1 ~ ~ replace move