function moeshnboard:move_column

# Move row
execute as @e[type=cow,name=moeshnboard.entity] at @s run teleport @s ~-192 ~ ~16
execute as @e[type=cow,name=moeshnboard.entity] at @s run scoreboard players set current_column createBoard 0
execute as @e[type=cow,name=moeshnboard.entity] at @s run scoreboard players add current_row createBoard 1

function moeshnboard:choose_and_place_structure
say Moving column

execute if score current_row createBoard < max_rows createBoard run function moeshnboard:move_row
execute if score current_row createBoard = max_rows createBoard run function moeshnboard:move_column

