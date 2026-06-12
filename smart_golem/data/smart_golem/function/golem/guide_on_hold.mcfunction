scoreboard players set $at_dest sg_guide 0
data modify storage smart_golem:macro gu set from entity @s UUID
data modify storage smart_golem:macro item set from entity @s equipment.mainhand.id
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: golem picked up ","color":"green"},{"nbt":"item","storage":"smart_golem:macro","color":"yellow"}]
execute if block ~1 ~ ~ #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~-1 ~ ~ #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~ ~ ~1 #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~ ~ ~-1 #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~ ~1 ~ #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~ ~-1 ~ #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if score $at_dest sg_guide matches 0 run function smart_golem:golem/guide_hold_prepare with storage smart_golem:macro
execute if score #debug sg_config matches 1 if score $at_dest sg_guide matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: at destination chest, skipping guidance cycle","color":"gray"}]
