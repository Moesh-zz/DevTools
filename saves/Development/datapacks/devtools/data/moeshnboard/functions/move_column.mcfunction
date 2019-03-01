function moeshnboard:choose_and_place_structure
# Move column
execute as @e[type=armor_stand,name=moeshnboard.entity] at @s run teleport @s ~16 ~ ~
scoreboard players add current_column createBoard 1


tellraw @a {"translate":"Row: %s, Column: %s, Color Choice: %s","color":"light_purple","with":[{"score":{"name":"current_row","objective":"createBoard"}},{"score":{"name":"current_column","objective":"createBoard"}},{"score":{"name":"color_choice","objective":"createBoard"}}]}

execute if score current_column createBoard < max_columns createBoard run function moeshnboard:move_column