data modify storage smart_golem:guide item set from entity @s equipment.mainhand.id
data modify storage smart_golem:guide gu set from entity @s UUID
data modify storage smart_golem:guide dim set from entity @s Dimension
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Scanning for ","color":"gray"},{"nbt":"item","storage":"smart_golem:guide","color":"yellow"}]
function smart_golem:guide/check_adjacent with storage smart_golem:guide