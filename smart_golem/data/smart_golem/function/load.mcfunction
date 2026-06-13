scoreboard objectives add sg_timer dummy
scoreboard objectives add sg_config dummy
scoreboard players set #stack_tick sg_timer 0
scoreboard players set #stack_interval sg_config 3
scoreboard players set #debug sg_config 0
tag @e[type=minecraft:copper_golem] remove sg_guided
execute as @e[type=minecraft:copper_golem] run data modify entity @s NoAI set value 0b
tellraw @a {"text":"[Smart Golem] §aLoaded! Copper golems carry 64 items.","color":"green"}