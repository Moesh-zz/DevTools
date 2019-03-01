scoreboard players set current_column createBoard 0
function moeshnboard:move_column

# Move row
execute as @e[type=armor_stand,name=moeshnboard.entity] at @s run teleport @s ~-208 ~ ~16
scoreboard players add current_row createBoard 1
execute if score current_row createBoard < max_rows createBoard run function moeshnboard:make_checkerboard