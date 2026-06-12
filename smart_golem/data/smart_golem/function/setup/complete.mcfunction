tag @s add sg_smart
data remove entity @s equipment.mainhand
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Setup: complete, found ",color:"gray"},{"nbt":"","storage":"smart_golem:setup_chests","color":"aqua"},{"text":" chests","color":"gray"}]