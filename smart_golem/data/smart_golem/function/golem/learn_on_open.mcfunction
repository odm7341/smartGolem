data modify storage smart_golem:macro_item gu set from entity @s UUID
data modify storage smart_golem:macro_item dim set from entity @s Dimension
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"onChestOpen: opened at ","color":"green"},{"nbt":"Pos[0]","entity":"@s","color":"aqua"},{"text":" ","color":"gray"},{"nbt":"Dimension","entity":"@s","color":"light_purple"}]
function smart_golem:golem/learn_chest with storage smart_golem:macro_item