##[options]

scoreboard objectives add options dummy
#set time scale if unset
execute unless score .timestep options = .timestep options run scoreboard players set .timestep options 5
#set iter options
scoreboard players set .iter_dim1 options 3
scoreboard players set .iter_dim2 options 3
scoreboard players set .chunk_size options 12

##[chunks]

scoreboard objectives add chunk_options dummy
scoreboard players reset * chunk_options

#iteration
scoreboard objectives add iter dummy
scoreboard players reset * iter
scoreboard objectives add cur_iter dummy
scoreboard players reset * cur_iter
scoreboard objectives add offset dummy
scoreboard players reset * offset

#repetitions
scoreboard objectives add reps_left dummy
scoreboard players reset * reps_left
scoreboard objectives add rep dummy
scoreboard players reset * rep

#diagonals
scoreboard objectives add diag dummy
scoreboard players reset * diag

function cells:util/calculate_chunk_options

##[other]

#time
scoreboard objectives add time dummy
scoreboard players set .until_next_step time 0

#common constants
scoreboard objectives add const dummy

#debug
scoreboard objectives add validate