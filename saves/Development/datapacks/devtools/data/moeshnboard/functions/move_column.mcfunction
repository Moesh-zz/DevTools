function moeshnboard:choose_and_place_structure

execute as @e[type=armor_stand,tag=Cursor] at @s run teleport @s ~16 ~ ~
scoreboard players add current_column createBoard 1

execute if score current_column createBoard < max_columns createBoard run function moeshnboard:move_column