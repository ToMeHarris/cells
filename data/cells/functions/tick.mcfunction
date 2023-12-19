scoreboard players remove .until_next_step time 1
execute if score .until_next_step time matches ..0 run function cells:do_timestep


#tag all chunks around player
#get number of chunks
#if inadequate chunks
	##check for buds:
	#if no buds
		#all chunks check num_nearby
		#if num_nearby < 7 (1 in each direction + self)
			#mark self as bud
	##grow chunks from buds:
	#at each bud
		#check each direction
		#if player is within sim_dist and no chunk is here:
			#create new bud
			#unmark self as bud