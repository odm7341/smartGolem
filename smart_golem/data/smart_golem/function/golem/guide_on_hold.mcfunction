tag @s add sg_guided
data modify storage smart_golem:macro gu set from entity @s UUID
data modify storage smart_golem:macro item set from entity @s equipment.mainhand.id
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: golem picked up ","color":"green"},{"nbt":"item","storage":"smart_golem:macro","color":"yellow"}]
function smart_golem:golem/guide_hold_prepare with storage smart_golem:macro
