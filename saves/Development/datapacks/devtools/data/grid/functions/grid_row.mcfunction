tellraw @p {"score": {"name":"current","objective":"x"}, "extra":[":", {"score": {"name":"current","objective":"y"}}]}

scoreboard players add current y 1
execute if score current y < limit y run function grid:grid_row