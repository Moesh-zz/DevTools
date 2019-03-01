# Announce process
tellraw @a {"translate":"moeshnboard.create","color":"green"}

# Set-up objectives
scoreboard objectives remove createBoard
scoreboard objectives add createBoard dummy

scoreboard players set max_rows createBoard 13
scoreboard players set max_columns createBoard 13

scoreboard players set current_row createBoard 0
scoreboard players set current_column createBoard 0

scoreboard players set 2 createBoard 2

# Fill border
fill 31 0 31 31 2 240 minecraft:black_concrete
fill 240 0 31 240 2 240 minecraft:black_concrete
fill 32 0 31 239 2 31 minecraft:black_concrete
fill 32 0 240 239 2 240 minecraft:black_concrete

# Teleport player to area, create actor, place first structure
teleport @s 31 10 31 -45 40
kill @e[type=armor_stand,name=moeshnboard.entity]
kill @e[type=item]
summon minecraft:armor_stand 32 3 32 {NoAI:1b,CustomName:"{\"translate\":\"moeshnboard.entity\"}",CustomNameVisible:1b,Duration:2147483647}

# Start loop
function moeshnboard:make_checkerboard