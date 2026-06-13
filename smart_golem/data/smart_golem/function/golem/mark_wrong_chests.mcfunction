execute unless entity @s[tag=sg_init] run data merge entity @s {Brain:{memories:{"minecraft:visited_block_positions":{value:[{pos:[I;0,-100,0],dimension:"minecraft:overworld"}],ttl:6000L}}}}
execute unless entity @s[tag=sg_init] if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Reset visited, freeze 40t, adding sg_init","color":"gray"}]
data modify storage smart_golem:guide item set from entity @s equipment.mainhand.id
data modify storage smart_golem:guide dim set from entity @s Dimension
tag @s add sg_current
execute unless entity @s[tag=sg_init] run tag @s add sg_frozen
execute unless entity @s[tag=sg_init] run data modify entity @s NoAI set value 1b
function smart_golem:guide/check_adjacent with storage smart_golem:guide
tag @s remove sg_current
execute unless entity @s[tag=sg_init] run schedule function smart_golem:golem/unfreeze 60 replace
tag @s add sg_init