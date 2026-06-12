execute unless data entity @s equipment.mainhand run data modify entity @s equipment.mainhand set value {count:1,id:"minecraft:knowledge_book"}
execute store result score mx sg_setup run data get entity @s Motion[0] 100
execute store result score mz sg_setup run data get entity @s Motion[2] 100
execute if score mx sg_setup matches -2..2 if score mz sg_setup matches -2..2 run function smart_golem:setup/detect_chest
execute store result score setup_count sg_setup run data get storage smart_golem:setup_chests
execute if score setup_count sg_setup > setup_prev sg_setup run scoreboard players set setup_timer sg_setup 0
execute if score setup_count sg_setup > setup_prev sg_setup run scoreboard players operation setup_prev sg_setup = setup_count sg_setup
execute if score setup_count sg_setup = setup_prev sg_setup run scoreboard players add setup_timer sg_setup 1
execute if score setup_count sg_setup matches ..0 run scoreboard players set setup_timer sg_setup 0
execute if score setup_timer sg_setup matches 200.. run function smart_golem:setup/complete