execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~1 ~ ~ if block ~ ~-1 ~ #smart_golem:storage_containers run summon marker ~ ~-1 ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~1 ~ ~ if block ~ ~ ~ #smart_golem:storage_containers run summon marker ~ ~ ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~1 ~ ~ if block ~ ~1 ~ #smart_golem:storage_containers run summon marker ~ ~1 ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~-1 ~ ~ if block ~ ~-1 ~ #smart_golem:storage_containers run summon marker ~ ~-1 ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~-1 ~ ~ if block ~ ~ ~ #smart_golem:storage_containers run summon marker ~ ~ ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~-1 ~ ~ if block ~ ~1 ~ #smart_golem:storage_containers run summon marker ~ ~1 ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~ ~ ~1 if block ~ ~-1 ~ #smart_golem:storage_containers run summon marker ~ ~-1 ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~ ~ ~1 if block ~ ~ ~ #smart_golem:storage_containers run summon marker ~ ~ ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~ ~ ~1 if block ~ ~1 ~ #smart_golem:storage_containers run summon marker ~ ~1 ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~ ~ ~-1 if block ~ ~-1 ~ #smart_golem:storage_containers run summon marker ~ ~-1 ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~ ~ ~-1 if block ~ ~ ~ #smart_golem:storage_containers run summon marker ~ ~ ~ {Tags:["sg_setup"]}
execute unless entity @e[type=marker,tag=sg_setup,limit=1] positioned ~ ~ ~-1 if block ~ ~1 ~ #smart_golem:storage_containers run summon marker ~ ~1 ~ {Tags:["sg_setup"]}
execute if entity @e[type=marker,tag=sg_setup,limit=1] run function smart_golem:setup/record_chest