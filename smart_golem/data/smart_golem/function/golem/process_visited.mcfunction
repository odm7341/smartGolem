$execute positioned $(x) $(y) $(z) if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:golem/learn_chest with storage smart_golem:macro_item
$execute positioned $(x) $(y) $(z) positioned ~1 ~ ~ if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:golem/learn_chest with storage smart_golem:macro_item
$execute positioned $(x) $(y) $(z) positioned ~-1 ~ ~ if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:golem/learn_chest with storage smart_golem:macro_item
$execute positioned $(x) $(y) $(z) positioned ~ ~ ~1 if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:golem/learn_chest with storage smart_golem:macro_item
$execute positioned $(x) $(y) $(z) positioned ~ ~ ~-1 if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:golem/learn_chest with storage smart_golem:macro_item
$execute positioned $(x) $(y) $(z) positioned ~ ~1 ~ if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:golem/learn_chest with storage smart_golem:macro_item
$execute positioned $(x) $(y) $(z) positioned ~ ~-1 ~ if block ~ ~ ~ #smart_golem:storage_containers run function smart_golem:golem/learn_chest with storage smart_golem:macro_item

data remove storage smart_golem:temp visited[0]
execute if data storage smart_golem:temp visited[0] run function smart_golem:golem/prepare_next_chest
