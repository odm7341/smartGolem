summon marker ~ ~ ~ {Tags:["sg_temp"]}
execute store result storage smart_golem:macro_item pos_x int 1 run data get entity @e[type=marker,tag=sg_temp,limit=1] Pos[0]
execute store result storage smart_golem:macro_item pos_y int 1 run data get entity @e[type=marker,tag=sg_temp,limit=1] Pos[1]
execute store result storage smart_golem:macro_item pos_z int 1 run data get entity @e[type=marker,tag=sg_temp,limit=1] Pos[2]
kill @e[type=marker,tag=sg_temp,limit=1]
$execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"onOpen: chest at (","color":"gray"},{"text":"$(pos_x)","color":"aqua"},{"text":",","color":"gray"},{"text":"$(pos_y)","color":"aqua"},{"text":",","color":"gray"},{"text":"$(pos_z)","color":"aqua"},{"text":")","color":"gray"}]
$execute unless entity @e[type=minecraft:copper_golem,nbt={UUID:$(gu)}] run return 0
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"onOpen: learning items from chest","color":"green"}]
function smart_golem:golem/learn_chest with storage smart_golem:macro_item