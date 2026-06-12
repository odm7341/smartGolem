execute store result storage smart_golem:macro_item.x int 1 run data get storage smart_golem:temp visited[0].pos[0]
execute store result storage smart_golem:macro_item.y int 1 run data get storage smart_golem:temp visited[0].pos[1]
execute store result storage smart_golem:macro_item.z int 1 run data get storage smart_golem:temp visited[0].pos[2]
data modify storage smart_golem:macro_item.dim set from storage smart_golem:temp visited[0].dimension
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Auto-learn: processing visited position (","color":"gray"},{"nbt":"x","storage":"smart_golem:macro_item","color":"aqua"},{"text":", ","color":"gray"},{"nbt":"y","storage":"smart_golem:macro_item","color":"aqua"},{"text":", ","color":"gray"},{"nbt":"z","storage":"smart_golem:macro_item","color":"aqua"},{"text":")","color":"gray"},{"text":" dim=","color":"gray"},{"nbt":"dim","storage":"smart_golem:macro_item","color":"light_purple"}]
function smart_golem:golem/process_visited with storage smart_golem:macro_item
