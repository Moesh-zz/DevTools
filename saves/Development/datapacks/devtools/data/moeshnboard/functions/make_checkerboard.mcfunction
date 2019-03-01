scoreboard players set current_column createBoard 0
function moeshnboard:move_column

# Move row
execute as @e[type=armor_stand,tag=RowMarker] at @s run teleport @s ~ ~ ~16
execute as @e[type=armor_stand,tag=Cursor] at @s run teleport @s @e[type=armor_stand,tag=RowMarker,limit=1]
scoreboard players add current_row createBoard 1

execute if score current_row createBoard < max_rows createBoard run function moeshnboard:make_checkerboard