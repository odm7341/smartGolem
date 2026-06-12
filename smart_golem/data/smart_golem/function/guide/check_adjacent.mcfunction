$execute positioned ~1 ~-1 ~ if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~1 ~ ~ if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~1 ~1 ~ if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~-1 ~-1 ~ if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~-1 ~ ~ if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~-1 ~1 ~ if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~ ~-1 ~1 if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~ ~ ~1 if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~ ~1 ~1 if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~ ~-1 ~-1 if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~ ~ ~-1 if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
$execute positioned ~ ~1 ~-1 if block ~ ~ ~ #smart_golem:destination_containers unless data block ~ ~ ~ Items[{id:"$(item)"}] run summon marker ~ ~ ~ {Tags:["sg_mark"]}
execute as @e[type=marker,tag=sg_mark] at @s run function smart_golem:guide/read_marker
kill @e[type=marker,tag=sg_mark]