execute as @e[type=minecraft:copper_golem,tag=sg_frozen] run data modify entity @s NoAI set value 0b
tag @e[type=minecraft:copper_golem] remove sg_frozen
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Unfreeze","color":"gray"}]