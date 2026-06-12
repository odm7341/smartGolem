execute if block ~1 ~ ~ #smart_golem:storage_containers if data block ~1 ~ ~ Items[0] run return 0
execute if block ~-1 ~ ~ #smart_golem:storage_containers if data block ~-1 ~ ~ Items[0] run return 0
execute if block ~ ~ ~1 #smart_golem:storage_containers if data block ~ ~ ~1 Items[0] run return 0
execute if block ~ ~ ~-1 #smart_golem:storage_containers if data block ~ ~ ~-1 Items[0] run return 0
execute if block ~ ~1 ~ #smart_golem:storage_containers if data block ~ ~1 ~ Items[0] run return 0
execute if block ~ ~-1 ~ #smart_golem:storage_containers if data block ~ ~-1 ~ Items[0] run return 0
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Reconcile: golem is idle, proceeding","color":"gray"}]
function smart_golem:golem/reconcile_golem