execute unless entity @e[type=minecraft:copper_golem,sort=nearest,limit=1] run tellraw @a [{"text":"[Smart Golem] ","color":"green"},{"text":"No copper golem nearby!","color":"red"}]
execute unless entity @e[type=minecraft:copper_golem,sort=nearest,limit=1] run return 0
data modify storage smart_golem:util gu set from entity @e[type=minecraft:copper_golem,sort=nearest,limit=1] UUID
tellraw @a [{"text":"[Smart Golem] ","color":"green"},{"text":"Memory entries for nearest golem:","color":"gray"}]
function smart_golem:utility/list_markers_macro with storage smart_golem:util