execute as @e[type=minecraft:copper_golem,tag=!sg_guided] if data entity @s equipment.mainhand run function smart_golem:golem/guide_on_hold
execute as @e[type=minecraft:copper_golem,tag=sg_guided] unless data entity @s equipment.mainhand run tag @s remove sg_guided
execute as @e[type=minecraft:copper_golem,tag=sg_guided] at @s run function smart_golem:golem/guide_at_dest