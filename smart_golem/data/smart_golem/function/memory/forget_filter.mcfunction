$execute unless entity @e[type=minecraft:copper_golem,nbt={UUID:[I;$(u0),$(u1),$(u2),$(u3)]}] run data remove storage smart_golem:brain.list [{uuid:[I;$(u0),$(u1),$(u2),$(u3)]}]
$data remove storage smart_golem:brain.list[$(dummy)]
function smart_golem:memory/forget_step