##required: iter_dim1, iter_dim2, size

#validate chunk size
scoreboard players operation .validate_size 


#calculate min and max iter
scoreboard players operation .min_dimension iter = .iter_dim1 options
scoreboard players operation .min_dimension iter < .iter_dim2 options
scoreboard players operation .max_dimension iter = .iter_dim1 options
scoreboard players operation .max_dimension iter > .iter_dim2 options

#len (how many cells to simulate diagonally (~1 ~1 ~1) each iteration)
#	equal to the minimum dimension
scoreboard players operation .len iter = .min_dimension iter

#calculate number of repititions x, y, and z 
scoreboard players operation .reps_x chunk_options = .chunk_size options
scoreboard players operation .reps_y chunk_options = .chunk_size options
scoreboard players operation .reps_z chunk_options = .chunk_size options
scoreboard players operation .reps_x chunk_options /= .max_dimension iter
scoreboard players operation .reps_y chunk_options /= .len iter
scoreboard players operation .reps_z chunk_options /= .min_dimension iter

#get num cycles 
scoreboard players operation .cycles iter = .iter_dim1 options
scoreboard players operation .cycles iter *= .iter_dim2 options