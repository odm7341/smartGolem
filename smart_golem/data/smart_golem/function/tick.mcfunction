scoreboard players add #mark_tick sg_timer 1
execute if score #mark_tick sg_timer >= #mark_interval sg_config run execute as @e[type=minecraft:copper_golem] if data entity @s equipment.mainhand at @s run function smart_golem:golem/mark_wrong_chests
execute if score #mark_tick sg_timer >= #mark_interval sg_config run scoreboard players set #mark_tick sg_timer 0