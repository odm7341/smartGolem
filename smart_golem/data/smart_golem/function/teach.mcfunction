data modify storage smart_golem:macro item set from entity @p SelectedItem.id
execute unless data storage smart_golem:macro item run tellraw @p [{"text":"[Smart Golem] ","color":"green"},{"text":"Hold an item and stand next to a chest!","color":"red"}]
execute unless data storage smart_golem:macro item run return 0
data modify storage smart_golem:macro dim set from entity @p Dimension
data modify storage smart_golem:macro gu set from entity @e[type=minecraft:copper_golem,sort=nearest,limit=1] UUID
execute unless data storage smart_golem:macro gu run tellraw @p [{"text":"[Smart Golem] ","color":"green"},{"text":"No copper golem nearby to teach!","color":"red"}]
execute unless data storage smart_golem:macro gu run return 0
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Teach: item=","color":"gray"},{"nbt":"item","storage":"smart_golem:macro","color":"yellow"},{"text":" gu=","color":"gray"},{"nbt":"gu","storage":"smart_golem:macro","color":"aqua"},{"text":" dim=","color":"gray"},{"nbt":"dim","storage":"smart_golem:macro","color":"light_purple"}]
execute at @p positioned ~ ~1 ~ if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:teach_at with storage smart_golem:macro
execute at @p positioned ~ ~-1 ~ if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:teach_at with storage smart_golem:macro
execute at @p positioned ~1 ~ ~ if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:teach_at with storage smart_golem:macro
execute at @p positioned ~-1 ~ ~ if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:teach_at with storage smart_golem:macro
execute at @p positioned ~ ~ ~1 if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:teach_at with storage smart_golem:macro
execute at @p positioned ~ ~ ~-1 if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:teach_at with storage smart_golem:macro
tellraw @p [{"text":"[Smart Golem] ","color":"green"},{"text":"Taught chest for golem: ","color":"gray"},{"nbt":"item","storage":"smart_golem:macro","color":"yellow"}]
execute if score #debug sg_config matches 1 run tellraw @a [{"text":"[Smart Golem Debug] ","color":"gold"},{"text":"Teach complete - memory stored at chest position","color":"green"}]