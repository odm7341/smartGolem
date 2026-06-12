data modify storage smart_golem:temp chest_items set from block ~ ~ ~ Items
execute if score #debug sg_config matches 1 if data storage smart_golem:temp chest_items[0] run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Chest has items, processing...","color":"gray"}]
execute if score #debug sg_config matches 1 unless data storage smart_golem:temp chest_items[0] run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Chest is empty","color":"red"}]
execute if data storage smart_golem:temp chest_items[0] run function smart_golem:golem/process_item