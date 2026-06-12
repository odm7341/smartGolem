execute as @e[type=minecraft:copper_golem] if data entity @s Brain.memories."minecraft:visited_block_positions".value[0] run function smart_golem:golem/guide_golem
