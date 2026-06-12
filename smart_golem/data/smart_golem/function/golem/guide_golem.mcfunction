data modify storage smart_golem:macro gu set from entity @s UUID
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: golem has visited positions, UUID=","color":"gray"},{"nbt":"gu","storage":"smart_golem:macro","color":"aqua"}]
function smart_golem:golem/guide_macro with storage smart_golem:macro
