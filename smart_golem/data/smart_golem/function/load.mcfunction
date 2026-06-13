scoreboard objectives add sg_timer dummy
scoreboard objectives add sg_config dummy
scoreboard objectives add sg_guide dummy
scoreboard players set #mark_tick sg_timer 0
scoreboard players set #mark_interval sg_config 3
scoreboard players set #debug sg_config 0
tag @e[type=minecraft:copper_golem] remove sg_guided
tag @e[type=minecraft:copper_golem] remove sg_init
tellraw @a {"text":"[Smart Golem] §aLoaded! Copper golems guided to item chests.","color":"green"}