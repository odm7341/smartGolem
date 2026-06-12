scoreboard objectives add sg_timer dummy
scoreboard objectives add sg_config dummy
scoreboard objectives add sg_guide dummy
scoreboard objectives add sg_setup dummy
scoreboard players set #guide_tick sg_timer 0
scoreboard players set #setup_tick sg_timer 0
scoreboard players set #guide_interval sg_config 10
scoreboard players set #setup_interval sg_config 5
scoreboard players set #debug sg_config 0
scoreboard players set setup_prev sg_setup -1
tag @e[type=minecraft:copper_golem] remove sg_guided
tag @e[type=minecraft:copper_golem] remove sg_smart
tellraw @a {"text":"[Smart Golem] §aLoaded! Copper golems guided to item chests.","color":"green"}