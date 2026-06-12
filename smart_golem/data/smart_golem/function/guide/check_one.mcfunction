data remove storage smart_golem:guide this_found
$data modify storage smart_golem:guide px set from storage smart_golem:setup_chests[$(i)].pos[0]
$data modify storage smart_golem:guide py set from storage smart_golem:setup_chests[$(i)].pos[1]
$data modify storage smart_golem:guide pz set from storage smart_golem:setup_chests[$(i)].pos[2]
summon marker ~ ~ ~ {Tags:["sg_gcheck"]}
$data modify entity @e[type=marker,tag=sg_gcheck,limit=1] Pos set value [d;$(px),$(py),$(pz)]
$execute as @e[type=marker,tag=sg_gcheck,limit=1] at @s if block ~ ~ ~ #smart_golem:destination_containers if data block ~ ~ ~ Items[{id:"$(item)"}] run data modify storage smart_golem:guide this_found set value 1b
kill @e[type=marker,tag=sg_gcheck,limit=1]
$execute unless data storage smart_golem:guide this_found run data modify entity @s Brain.memories."minecraft:visited_block_positions".value append value {pos:[I;$(px),$(py),$(pz)], dimension:"$(dim)"}
execute if data storage smart_golem:guide this_found run data modify storage smart_golem:guide found set value 1b
scoreboard players add loop_i sg_guide 1
function smart_golem:guide/step_target with storage smart_golem:guide