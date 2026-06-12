scoreboard objectives add sg_timer dummy
scoreboard objectives add sg_config dummy
scoreboard objectives add sg_guide dummy
scoreboard players set #guide_tick sg_timer 0
scoreboard players set #open_tick sg_timer 0
scoreboard players set #reconcile_tick sg_timer 0
scoreboard players set #forget_tick sg_timer 0
scoreboard players set #guide_interval sg_config 10
scoreboard players set #open_interval sg_config 2
scoreboard players set #reconcile_interval sg_config 1200
scoreboard players set #forget_interval sg_config 6000
scoreboard players set #debug sg_config 0
tellraw @a {"text":"[Smart Golem] §aLoaded! Copper golems learn from chests and remember item locations.","color":"green"}
