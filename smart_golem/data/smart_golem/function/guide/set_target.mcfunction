data remove entity @s Brain.memories."minecraft:visited_block_positions"
data modify storage smart_golem:guide found set value 0b
scoreboard players set loop_i sg_guide 0
execute store result score n sg_guide run data get storage smart_golem:setup_chests
execute store result storage smart_golem:guide n int 1 run scoreboard players get n sg_guide
data modify storage smart_golem:guide dim set from entity @s Dimension
function smart_golem:guide/step_target with storage smart_golem:guide