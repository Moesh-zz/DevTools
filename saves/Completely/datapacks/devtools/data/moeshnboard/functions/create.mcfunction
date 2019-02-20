# Fill border
fill 31 0 31 31 2 240 minecraft:black_concrete
fill 240 0 31 240 2 240 minecraft:black_concrete
fill 32 0 31 239 2 31 minecraft:black_concrete
fill 32 0 240 239 2 240 minecraft:black_concrete

# Set-up objectives
scoreboard objectives add createBoard dummy
scoreboard players set max_rows createBoard 12
scoreboard players set max_columns createBoard 12
scoreboard players set current_row createBoard 0
scoreboard players set current_column createBoard 0
scoreboard players set 2 createBoard 2

scoreboard objectives setdisplay sidebar createBoard

# Teleport player to area and create actor
teleport @s 31 10 31 -45 40
kill @e[type=cow,name=moeshnboard.entity]
kill @e[type=item]
summon minecraft:cow 32 3 32 {NoAI:1b,CustomName:"{\"translate\":\"moeshnboard.entity\"}",CustomNameVisible:1b,Duration:2147483647}

function moeshnboard:choose_and_place_structure
function moeshnboard:place_chunks

# Move actor around
	# FINISHED: Actor starts at column and row 0
	# FINISHED: Determine color of chunk
	# FINISHED: Place structure block
	# FINISHED: Power structure block
	# FINISHED: Remove development blocks
	# IF current_column < max_columns
		# Move 16 blocks east
		# Tick up current_row
		# REPEAT
	# ELSEIF current_column = max_columns AND current_row < max_rows
		# Move 16 blocks south
		# Reset  blocks west
		# Set current_row to 0
		# Tick up 
		# REPEAT
	# ELSE current_row = max_rows AND current_column = max_columns
		# END LOOP

