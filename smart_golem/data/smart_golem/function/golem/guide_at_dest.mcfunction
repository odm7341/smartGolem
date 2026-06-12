scoreboard players set $at_dest sg_guide 0
execute if block ~1 ~ ~ #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~-1 ~ ~ #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~ ~ ~1 #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~ ~ ~-1 #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~ ~1 ~ #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~ ~-1 ~ #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~1 ~ ~1 #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~-1 ~ ~1 #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~1 ~ ~-1 #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if block ~-1 ~ ~-1 #smart_golem:destination_containers run scoreboard players set $at_dest sg_guide 1
execute if score $at_dest sg_guide matches 1 run tag @s remove sg_guided
execute if score #debug sg_config matches 1 if score $at_dest sg_guide matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: golem arrived at destination, releasing guidance","color":"gray"}]