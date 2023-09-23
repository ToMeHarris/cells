#simulation options
scoreboard objectives add options dummy
#set time scale if unset
execute unless score .time_scale options = .time_scale options run scoreboard players set .time_scale options 5

scoreboard objectives add chunk_options dummy
#TODO: move iter options out of chunk options
scoreboard players set .iter_dim1 chunk_options 2
scoreboard players set .iter_dim2 chunk_options 3
#update chunk options
function cells:util/calculate_chunk_options

scoreboard objectives add cur_iter dummy
scoreboard players reset * cur_iter
scoreboard objectives add offset dummy
scoreboard players reset * offset

#common constants
scoreboard objectives add const dummy

#debug
scoreboard objectives add time dummy
scoreboard players set .until_next_step time 0