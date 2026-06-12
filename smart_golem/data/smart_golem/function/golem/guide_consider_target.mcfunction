execute unless score $found sg_guide matches 1 if block ~ ~ ~ #smart_golem:destination_containers run execute store result score $target_x sg_guide run data get entity @s Pos[0]
execute unless score $found sg_guide matches 1 if block ~ ~ ~ #smart_golem:destination_containers run execute store result score $target_y sg_guide run data get entity @s Pos[1]
execute unless score $found sg_guide matches 1 if block ~ ~ ~ #smart_golem:destination_containers run execute store result score $target_z sg_guide run data get entity @s Pos[2]
execute unless score $found sg_guide matches 1 if block ~ ~ ~ #smart_golem:destination_containers run scoreboard players set $found sg_guide 1
