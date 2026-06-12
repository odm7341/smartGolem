execute store result storage smart_golem:guide pos_x int 1 run scoreboard players get $mx sg_guide
execute store result storage smart_golem:guide pos_y int 1 run scoreboard players get $my sg_guide
execute store result storage smart_golem:guide pos_z int 1 run scoreboard players get $mz sg_guide
data modify storage smart_golem:guide dim set from entity @s data.dim
function smart_golem:golem/guide_hold_add_macro with storage smart_golem:guide
