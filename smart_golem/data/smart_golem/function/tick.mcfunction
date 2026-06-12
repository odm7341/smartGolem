scoreboard players add #tick sg_timer 1
execute if score #tick sg_timer >= #guide_interval sg_config run function smart_golem:golem/guide_hold_cycle
execute if score #tick sg_timer >= #scan_interval sg_config run function smart_golem:golem/auto_learn
execute if score #tick sg_timer >= #forget_interval sg_config run function smart_golem:memory/forget
execute if score #tick sg_timer >= #forget_interval sg_config run scoreboard players set #tick sg_timer 0
