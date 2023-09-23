#required: iter_dim1, iter_dim2, size

#calculate min and max iter
scoreboard players operation .iter_min chunk_options = .iter_dim1 chunk_options
scoreboard players operation .iter_min chunk_options < .iter_dim2 chunk_options
scoreboard players operation .iter_max chunk_options = .iter_dim1 chunk_options
scoreboard players operation .iter_max chunk_options > .iter_dim2 chunk_options


#len (how many cells to simulate diagonally (~1 ~1 ~1) each iteration)
#	equal to the minimum dimension
scoreboard players operation .len chunk_options = .iter_min chunk_options

#calculate number of repititions x, y, and z 
scoreboard players operation .rep_x chunk_options = .size chunk_options
scoreboard players operation .rep_y chunk_options = .size chunk_options
scoreboard players operation .rep_z chunk_options = .size chunk_options
scoreboard players operation .rep_x chunk_options /= .iter_max chunk_options
scoreboard players operation .rep_y chunk_options /= .len chunk_options
scoreboard players operation .rep_z chunk_options /= .iter_min chunk_options

#get num cycles 
scoreboard players operation .cycles chunk_options = .iter_dim1 chunk_options
scoreboard players operation .cycles chunk_options *= .iter_dim2 chunk_options