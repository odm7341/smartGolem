execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Forget: scanning for orphaned memory entries","color":"gray"}]
execute store result score $forget_size sg_temp run data get storage smart_golem:brain.list
execute if score $forget_size sg_temp matches 1.. run function smart_golem:memory/forget_step
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Forget: done","color":"gray"}]