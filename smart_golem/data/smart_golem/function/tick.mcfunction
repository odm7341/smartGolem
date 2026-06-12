scoreboard players add #guide_tick sg_timer 1
execute if score #guide_tick sg_timer >= #guide_interval sg_config run function smart_golem:golem/guide_hold_cycle
execute if score #guide_tick sg_timer >= #guide_interval sg_config run scoreboard players set #guide_tick sg_timer 0

scoreboard players add #setup_tick sg_timer 1
execute if score #setup_tick sg_timer >= #setup_interval sg_config run execute as @e[type=minecraft:copper_golem,tag=!sg_smart] at @s run function smart_golem:setup/setup
execute if score #setup_tick sg_timer >= #setup_interval sg_config run scoreboard players set #setup_tick sg_timer 0