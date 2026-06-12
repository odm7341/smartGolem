execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: checking all copper golems for visited positions","color":"gray"}]
execute as @e[type=minecraft:copper_golem] if data entity @s Brain.memories."minecraft:visited_block_positions".value[0] run function smart_golem:golem/guide_golem
