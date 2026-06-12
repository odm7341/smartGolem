data modify storage smart_golem:util item set from entity @p SelectedItem.id
execute unless data storage smart_golem:util item run tellraw @a [{"text":"[Smart Golem] ","color":"green"},{"text":"Hold an item in your main hand to check which chest the nearest golem knows about!","color":"red"}]
execute unless data storage smart_golem:util item run return 0
execute unless entity @e[type=minecraft:copper_golem,sort=nearest,limit=1] run tellraw @a [{"text":"[Smart Golem] ","color":"green"},{"text":"No copper golem nearby!","color":"red"}]
execute unless entity @e[type=minecraft:copper_golem,sort=nearest,limit=1] run return 0
data modify storage smart_golem:util gu set from entity @e[type=minecraft:copper_golem,sort=nearest,limit=1] UUID
tellraw @a [{"text":"[Smart Golem] ","color":"green"},{"text":"Checking: item=","color":"gray"},{"nbt":"item","storage":"smart_golem:util","color":"yellow"},{"text":" for nearest golem","color":"gray"}]
function smart_golem:utility/check_chest_macro with storage smart_golem:util
