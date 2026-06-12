data modify storage smart_golem:guide item set from entity @s equipment.mainhand.id
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: golem picked up ","color":"green"},{"nbt":"item","storage":"smart_golem:guide","color":"yellow"}]
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug]  ","color":"gold"},{"text":"Searching chests for ","color":"gray"},{"nbt":"item","storage":"smart_golem:guide","color":"yellow"}]
data modify entity @s NoAI set value 1b
tag @s add sg_guided
function smart_golem:guide/set_target
execute if score #debug sg_config matches 1 if data storage smart_golem:guide found run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: found target chest, guidance active","color":"green"}]
execute if score #debug sg_config matches 1 unless data storage smart_golem:guide found run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: no chest with this item found","color":"red"}]
data modify entity @s NoAI set value 0b