# Determine color of chunk: (row + column) % 2
scoreboard players operation color_choice createBoard = current_row createBoard
scoreboard players operation color_choice createBoard += current_column createBoard
scoreboard players operation color_choice createBoard %= 2 createBoard


function moeshnboard:choose_and_place_structure

# Move column
execute if score current_column createBoard matches ..12 as @e[type=cow,name=moeshnboard.entity] at @s run teleport @s ~16 ~ ~
execute if score current_column createBoard matches ..12 as @e[type=cow,name=moeshnboard.entity] at @s run scoreboard players add current_column createBoard 1

# Move row
#execute if score current_column createBoard matches 13 as @e[type=cow,name=moeshnboard.entity] at @s run teleport @s ~-192 ~ ~16
#execute if score current_column createBoard matches 13 as @e[type=cow,name=moeshnboard.entity] at @s run tellraw @a {"translate":"Row: %s, Column: %s, Color Choice: %s","with":[{"score":{"name":"current_row","objective":"createBoard"}},{"score":{"name":"current_column","objective":"createBoard"}},{"score":{"name":"color_choice","objective":"createBoard"}}]}
#execute if score current_column createBoard matches 13 as @e[type=cow,name=moeshnboard.entity] at @s run scoreboard players set current_column createBoard 0
#execute if score current_column createBoard matches 13 as @e[type=cow,name=moeshnboard.entity] at @s run scoreboard players add current_row createBoard 1

execute if score current_row createBoard matches ..12 run schedule function moeshnboard:place_chunks 1t

