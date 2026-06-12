scoreboard players add #guide_tick sg_timer 1
execute if score #guide_tick sg_timer >= #guide_interval sg_config run function smart_golem:golem/guide_hold_cycle
execute if score #guide_tick sg_timer >= #guide_interval sg_config run scoreboard players set #guide_tick sg_timer 0

scoreboard players add #scan_tick sg_timer 1
execute if score #scan_tick sg_timer >= #scan_interval sg_config run function smart_golem:golem/auto_learn
execute if score #scan_tick sg_timer >= #scan_interval sg_config run scoreboard players set #scan_tick sg_timer 0

scoreboard players add #reconcile_tick sg_timer 1
execute if score #reconcile_tick sg_timer >= #reconcile_interval sg_config run function smart_golem:reconcile
execute if score #reconcile_tick sg_timer >= #reconcile_interval sg_config run scoreboard players set #reconcile_tick sg_timer 0

scoreboard players add #forget_tick sg_timer 1
execute if score #forget_tick sg_timer >= #forget_interval sg_config run function smart_golem:memory/forget
execute if score #forget_tick sg_timer >= #forget_interval sg_config run scoreboard players set #forget_tick sg_timer 0
