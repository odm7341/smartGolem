$kill @e[type=marker,tag=sg_memory,distance=..0.5,nbt={data:{golem_uuid:$(gu)}}]
$kill @e[type=marker,tag=sg_chest,distance=..0.5,nbt={data:{golem_uuid:$(gu)}}]
$summon marker ~0.5 ~0.5 ~0.5 {Tags:["sg_chest"], data:{golem_uuid:$(gu)}}
data modify storage smart_golem:temp chest_items set from block ~ ~ ~ Items
execute if score #debug sg_config matches 1 if data storage smart_golem:temp chest_items[0] run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Auto-learn: chest has items, processing...","color":"gray"}]
execute if score #debug sg_config matches 1 unless data storage smart_golem:temp chest_items[0] run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Auto-learn: chest is empty","color":"red"}]
execute if data storage smart_golem:temp chest_items[0] run function smart_golem:golem/process_item
