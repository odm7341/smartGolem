$execute unless data storage smart_golem:brain.list[$(dummy)] run return 0
$execute store result storage smart_golem:macro u0 int 1 run data get storage smart_golem:brain.list[$(dummy)].uuid[0]
$execute store result storage smart_golem:macro u1 int 1 run data get storage smart_golem:brain.list[$(dummy)].uuid[1]
$execute store result storage smart_golem:macro u2 int 1 run data get storage smart_golem:brain.list[$(dummy)].uuid[2]
$execute store result storage smart_golem:macro u3 int 1 run data get storage smart_golem:brain.list[$(dummy)].uuid[3]
function smart_golem:memory/forget_filter with storage smart_golem:macro