$execute positioned $(x) $(y) $(z) if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:golem/learn_chest with storage smart_golem:macro_item
$execute if score #debug sg_config matches 1 positioned $(x) $(y) $(z) unless block ~ ~ ~ #smart_golem:storage_containers run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Auto-learn: visited pos (","color":"gray"},{"text":"$(x)","color":"aqua"},{"text":",","color":"gray"},{"text":"$(y)","color":"aqua"},{"text":",","color":"gray"},{"text":"$(z)","color":"aqua"},{"text":") is not a container, skipping","color":"red"}]
data remove storage smart_golem:temp visited[0]
execute if data storage smart_golem:temp visited[0] run function smart_golem:golem/prepare_next_chest
