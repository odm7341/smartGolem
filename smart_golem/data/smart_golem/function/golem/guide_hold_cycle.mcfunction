execute as @e[type=minecraft:copper_golem,tag=sg_guided] unless data entity @s equipment run tag @s remove sg_guided
execute as @e[type=minecraft:copper_golem,tag=!sg_guided,nbt={equipment:{mainhand:{}}}] run function smart_golem:golem/guide_on_hold
