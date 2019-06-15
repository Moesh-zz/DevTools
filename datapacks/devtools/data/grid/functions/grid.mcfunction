scoreboard players set current y 0
function grid:grid_row

scoreboard players add current x 1
execute if score current x < limit x run function grid:grid