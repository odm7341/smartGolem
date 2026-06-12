execute store result storage smart_golem:setup px int 1 run data get entity @e[type=marker,tag=sg_setup,limit=1] Pos[0]
execute store result storage smart_golem:setup py int 1 run data get entity @e[type=marker,tag=sg_setup,limit=1] Pos[1]
execute store result storage smart_golem:setup pz int 1 run data get entity @e[type=marker,tag=sg_setup,limit=1] Pos[2]
function smart_golem:setup/append_chest with storage smart_golem:setup
kill @e[type=marker,tag=sg_setup,limit=1]