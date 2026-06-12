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
execute if score $at_dest sg_guide matches 1 unless data entity @s equipment.mainhand run tag @s remove sg_guided
execute if score #debug sg_config matches 1 if score $at_dest sg_guide matches 1 unless data entity @s equipment.mainhand run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: golem deposited at destination, releasing guidance","color":"gray"}]
execute if score #debug sg_config matches 1 if score $at_dest sg_guide matches 1 if data entity @s equipment.mainhand run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: golem at destination but still holding item, keeping guidance","color":"gray"}]