scoreboard players set $found sg_guide 0
$execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug]  ","color":"gold"},{"text":"Searching ALL markers for UUID=$(gu) item=$(item)","color":"gray"}]
$execute as @e[type=marker,tag=sg_memory,nbt={data:{golem_uuid:$(gu),item:"$(item)"}}] at @s run function smart_golem:golem/guide_consider_target
data modify storage smart_golem:guide gu set from storage smart_golem:macro gu
$execute if score $found sg_guide matches 1 as @e[type=minecraft:copper_golem,nbt={UUID:$(gu)}] run data modify entity @s Brain.memories."minecraft:visited_block_positions".value set value []
$execute if score $found sg_guide matches 1 as @e[type=marker,tag=sg_memory,nbt={data:{golem_uuid:$(gu)}}] at @s run function smart_golem:golem/guide_hold_check
execute if score $found sg_guide matches 0 if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: no matching destination marker for ","color":"red"},{"nbt":"item","storage":"smart_golem:macro","color":"yellow"}]
execute if score $found sg_guide matches 1 if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: target chest at (","color":"green"},{"score":{"name":"$target_x","objective":"sg_guide"},"color":"aqua"},{"text":",","color":"gray"},{"score":{"name":"$target_y","objective":"sg_guide"},"color":"aqua"},{"text":",","color":"gray"},{"score":{"name":"$target_z","objective":"sg_guide"},"color":"aqua"},{"text":")","color":"gray"}]
