data modify storage smart_golem:goal pos set from entity @s Pos
data modify storage smart_golem:goal dim set from entity @s data.dim
data modify storage smart_golem:goal active set value 1b
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Guide: set ACTIVE target at ","color":"green"},{"nbt":"pos","storage":"smart_golem:goal","color":"aqua"},{"text":" dim=","color":"gray"},{"nbt":"dim","storage":"smart_golem:goal","color":"light_purple"}]
