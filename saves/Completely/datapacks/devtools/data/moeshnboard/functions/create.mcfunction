# Announce process
tellraw @a {"translate":"moeshnboard.create","color":"green"}

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

# Teleport player to area, create actor, place first structure
teleport @s 31 10 31 -45 40
kill @e[type=cow,name=moeshnboard.entity]
kill @e[type=item]
summon minecraft:cow 32 3 32 {NoAI:1b,CustomName:"{\"translate\":\"moeshnboard.entity\"}",CustomNameVisible:1b,Duration:2147483647}
function moeshnboard:choose_and_place_structure
scoreboard players add current_column createBoard 1
execute as @e[type=cow,name=moeshnboard.entity] at @s run teleport @s ~16 ~ ~
#function moeshnboard:choose_and_place_structure

# Start loop
function moeshnboard:move_row
