# Determine color of chunk: (row + column) % 2
scoreboard players operation color_choice createBoard = current_row createBoard
scoreboard players operation color_choice createBoard += current_column createBoard
scoreboard players operation color_choice createBoard %= 2 createBoard

# Place and power structure block, clean-up
execute as @e[type=armor_stand,name=moeshnboard.entity] at @s if score color_choice createBoard matches 0 run setblock ~ ~ ~ minecraft:structure_block{id: "minecraft:structure_block", posX: 0, posY: -3, posZ: 0, mode: "LOAD", sizeX: 16, sizeY: 3, sizeZ: 16, integrity: 1.0f, showair: 0b, name: "moeshnboard:blue_chunk", showboundingbox: 1b}
execute as @e[type=armor_stand,name=moeshnboard.entity] at @s if score color_choice createBoard matches 1 run setblock ~ ~ ~ minecraft:structure_block{id: "minecraft:structure_block", posX: 0, posY: -3, posZ: 0, mode: "LOAD", sizeX: 16, sizeY: 3, sizeZ: 16, integrity: 1.0f, showair: 0b, name: "moeshnboard:magenta_chunk", showboundingbox: 1b}
execute as @e[type=armor_stand,name=moeshnboard.entity] at @s run setblock ~ ~1 ~ minecraft:redstone_block
execute as @e[type=armor_stand,name=moeshnboard.entity] at @s run fill ~ ~ ~ ~ ~1 ~ minecraft:air