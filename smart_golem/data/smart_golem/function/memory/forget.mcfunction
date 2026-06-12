execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Forget: scanning for orphaned memory/chest markers","color":"gray"}]
execute as @e[type=marker,tag=sg_memory] at @s unless block ~ ~ ~ #smart_golem:storage_containers run kill @s
execute as @e[type=marker,tag=sg_chest] at @s unless block ~ ~ ~ #smart_golem:storage_containers run kill @s
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Forget: done","color":"gray"}]
