execute store result storage smart_golem:guide vx int 1 run data get entity @s Pos[0]
execute store result storage smart_golem:guide vy int 1 run data get entity @s Pos[1]
execute store result storage smart_golem:guide vz int 1 run data get entity @s Pos[2]
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Skip chest at (","color":"gray"},{"nbt":"vx","storage":"smart_golem:guide","color":"aqua"},{"text":",","color":"gray"},{"nbt":"vy","storage":"smart_golem:guide","color":"aqua"},{"text":",","color":"gray"},{"nbt":"vz","storage":"smart_golem:guide","color":"aqua"},{"text":")","color":"gray"}]
function smart_golem:guide/append_visited with storage smart_golem:guide