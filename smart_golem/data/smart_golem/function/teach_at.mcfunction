summon marker ~ ~ ~ {Tags:["sg_temp"]}
execute store result storage smart_golem:macro pos_x int 1 run data get entity @e[type=marker,tag=sg_temp,limit=1] Pos[0]
execute store result storage smart_golem:macro pos_y int 1 run data get entity @e[type=marker,tag=sg_temp,limit=1] Pos[1]
execute store result storage smart_golem:macro pos_z int 1 run data get entity @e[type=marker,tag=sg_temp,limit=1] Pos[2]
kill @e[type=marker,tag=sg_temp,limit=1]
$data remove storage smart_golem:brain.list [{uuid:$(gu),item:"$(item)"}]
$data modify storage smart_golem:brain.list append value {uuid:$(gu),item:"$(item)",pos:[I;$(pos_x),$(pos_y),$(pos_z)],dim:"$(dim)"}
$execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Teach: stored memory for ","color":"gray"},{"text":"$(item)","color":"yellow"},{"text":" at (","color":"gray"},{"text":"$(pos_x)","color":"aqua"},{"text":",","color":"gray"},{"text":"$(pos_y)","color":"aqua"},{"text":",","color":"gray"},{"text":"$(pos_z)","color":"aqua"},{"text":")","color":"gray"}]