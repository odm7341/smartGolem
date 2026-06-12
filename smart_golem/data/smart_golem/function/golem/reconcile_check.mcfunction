$execute unless data storage smart_golem:brain.list [{uuid:$(gu)}][0] run return 0
$data modify storage smart_golem:macro_item px set from storage smart_golem:brain.list [{uuid:$(gu)}][0].pos[0]
$data modify storage smart_golem:macro_item py set from storage smart_golem:brain.list [{uuid:$(gu)}][0].pos[1]
$data modify storage smart_golem:macro_item pz set from storage smart_golem:brain.list [{uuid:$(gu)}][0].pos[2]
$summon marker $(px) $(py) $(pz) {Tags:["sg_recon"]}
$execute as @e[type=marker,tag=sg_recon,limit=1] at @s unless block ~ ~ ~ #smart_golem:storage_containers run data remove storage smart_golem:brain.list [{pos:[I;$(px),$(py),$(pz)]}]
kill @e[type=marker,tag=sg_recon,limit=1]
$execute if data storage smart_golem:brain.list [{uuid:$(gu)}] run function smart_golem:golem/reconcile_check with storage smart_golem:macro_item