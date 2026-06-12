data modify storage smart_golem:macro_item.item set from storage smart_golem:temp chest_items[0].id
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Auto-learn: processing item ","color":"gray"},{"nbt":"item","storage":"smart_golem:macro_item","color":"yellow"}]
function smart_golem:golem/spawn_memory with storage smart_golem:macro_item
data remove storage smart_golem:temp chest_items[0]
execute if data storage smart_golem:temp chest_items[0] run function smart_golem:golem/process_item
