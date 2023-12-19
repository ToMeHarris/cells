##[common constants]
scoreboard objectives add constants dummy
scoreboard players set .2 constants 2

##[simulation options]
scoreboard objectives add options dummy
#set time scale to default if unset
execute unless score .chunk_size options matches 2.. run scoreboard players set .chunk_size options 16
execute unless score .time_step options matches 1.. run scoreboard players set .time_step options 1

##[chunks]
scoreboard objectives add chunk dummy
scoreboard players reset * chunk
scoreboard players operation .size/2 chunk = .chunk_size options
scoreboard players operation .size/2 chunk /= .2 constants


##[time]
scoreboard objectives add time dummy
scoreboard players set .until_next_step time 0