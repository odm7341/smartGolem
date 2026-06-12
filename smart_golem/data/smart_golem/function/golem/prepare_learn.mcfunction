data modify storage smart_golem:temp visited set from entity @s Brain.memories."minecraft:visited_block_positions".value
data modify storage smart_golem:macro_item gu set from entity @s UUID
execute store result storage smart_golem:macro_item sx int 1 run data get entity @s Pos[0]
execute store result storage smart_golem:macro_item sy int 1 run data get entity @s Pos[1]
execute store result storage smart_golem:macro_item sz int 1 run data get entity @s Pos[2]
execute if score #debug sg_config matches 1 if data storage smart_golem:temp visited[0] run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Auto-learn: golem has visited positions, learning...","color":"gray"}]
execute if data storage smart_golem:temp visited[0] run function smart_golem:golem/prepare_next_chest
function smart_golem:golem/scan_nearby with storage smart_golem:macro_item
