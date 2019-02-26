function moeshnboard:move_column

# Move row
execute as @e[type=cow,name=moeshnboard.entity] at @s run teleport @s ~-208 ~ ~16
execute as @e[type=cow,name=moeshnboard.entity] at @s run scoreboard players set current_column createBoard -1
execute as @e[type=cow,name=moeshnboard.entity] at @s run scoreboard players add current_row createBoard 1

execute if score current_row createBoard < max_rows createBoard run schedule function moeshnboard:move_row 1t

