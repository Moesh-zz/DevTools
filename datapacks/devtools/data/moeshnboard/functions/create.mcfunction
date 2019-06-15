# Announce process
tellraw @a {"translate":"moeshnboard.create","color":"light_purple"}

# Set-up objectives
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
kill @e[type=armor_stand]
summon minecraft:armor_stand 32 3 32 {NoAI:1b,NoGravity:1b,CustomName:"{\"translate\":\"moeshnboard.entity.cursor\"}",Tags:["Cursor"],CustomNameVisible:1b}
summon minecraft:armor_stand 32 3 32 {NoAI:1b,NoGravity:1b,CustomName:"{\"translate\":\"moeshnboard.entity.rowMarker\"}",Tags:["RowMarker"],CustomNameVisible:1b}

# Start loop
function moeshnboard:make_checkerboard

# Clean-up
kill @e[type=armor_stand]
scoreboard objectives remove createBoard
fill 143 1 143 128 2 128 minecraft:black_concrete
fill 136 1 136 136 2 136 minecraft:red_concrete

tellraw @a {"translate":"moeshnboard.complete","color":"light_purple"}