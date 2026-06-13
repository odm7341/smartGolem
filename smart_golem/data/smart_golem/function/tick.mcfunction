scoreboard players add #stack_tick sg_timer 1
execute if score #stack_tick sg_timer >= #stack_interval sg_config run execute as @e[type=minecraft:copper_golem] if data entity @s equipment.mainhand run data modify entity @s equipment.mainhand.count set value 64
execute if score #stack_tick sg_timer >= #stack_interval sg_config run scoreboard players set #stack_tick sg_timer 0