execute if data entity @s Brain.memories."minecraft:walk_target" run return 0
data modify storage smart_golem:temp p set from storage smart_golem:goal pos
execute store result storage smart_golem:temp x int 1 run data get storage smart_golem:temp p[0]
execute store result storage smart_golem:temp y int 1 run data get storage smart_golem:temp p[1]
execute store result storage smart_golem:temp z int 1 run data get storage smart_golem:temp p[2]
data modify entity @s Brain.memories."minecraft:walk_target" set value {pos:[I;0,0,0], dimension:"minecraft:overworld"}
data modify entity @s Brain.memories."minecraft:walk_target".value.pos[0] set from storage smart_golem:temp x
data modify entity @s Brain.memories."minecraft:walk_target".value.pos[1] set from storage smart_golem:temp y
data modify entity @s Brain.memories."minecraft:walk_target".value.pos[2] set from storage smart_golem:temp z
data modify entity @s Brain.memories."minecraft:walk_target".value.dimension set from storage smart_golem:goal dim
data remove storage smart_golem:temp p
data remove storage smart_golem:temp x
data remove storage smart_golem:temp y
data remove storage smart_golem:temp z
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: Set walk_target for golem to ","color":"green"},{"nbt":"pos","storage":"smart_golem:goal","color":"aqua"},{"text":" dim=","color":"gray"},{"nbt":"dim","storage":"smart_golem:goal","color":"light_purple"},{"text":" active=","color":"gray"},{"nbt":"active","storage":"smart_golem:goal","color":"yellow"}]
