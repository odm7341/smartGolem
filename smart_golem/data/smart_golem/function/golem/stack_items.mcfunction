execute store result score $gcount sg_config run data get entity @s equipment.mainhand.count
execute if score $gcount sg_config matches 64.. run return 0
execute store result score $need sg_config run scoreboard players set $need sg_config 64
scoreboard players operation $need sg_config -= $gcount sg_config
data modify storage smart_golem:guide item set from entity @s equipment.mainhand.id
execute store result storage smart_golem:guide need int 1 run scoreboard players get $need sg_config
execute if block ~1 ~ ~ minecraft:copper_chest run execute positioned ~1 ~ ~ run function smart_golem:golem/transfer with storage smart_golem:guide
execute if block ~-1 ~ ~ minecraft:copper_chest run execute positioned ~-1 ~ ~ run function smart_golem:golem/transfer with storage smart_golem:guide
execute if block ~ ~ ~1 minecraft:copper_chest run execute positioned ~ ~ ~1 run function smart_golem:golem/transfer with storage smart_golem:guide
execute if block ~ ~ ~-1 minecraft:copper_chest run execute positioned ~ ~ ~-1 run function smart_golem:golem/transfer with storage smart_golem:guide
execute if block ~ ~1 ~ minecraft:copper_chest run execute positioned ~ ~1 ~ run function smart_golem:golem/transfer with storage smart_golem:guide
execute if block ~ ~-1 ~ minecraft:copper_chest run execute positioned ~ ~-1 ~ run function smart_golem:golem/transfer with storage smart_golem:guide