$execute store result score $cc sg_config run data get block ~ ~ ~ Items[{Slot:$(s)b,id:"$(item)"}].count
scoreboard players operation $take sg_config = $cc sg_config
scoreboard players operation $take sg_config < $need sg_config
execute store result score $gc sg_config run data get entity @s equipment.mainhand.count
scoreboard players operation $gc sg_config += $take sg_config
execute if score $gc sg_config matches 64.. run scoreboard players set $gc sg_config 64
execute store result entity @s equipment.mainhand.count int 1 run scoreboard players get $gc sg_config
scoreboard players operation $cc sg_config -= $take sg_config
$execute if score $cc sg_config matches 1.. run execute store result block ~ ~ ~ Items[{Slot:$(s)b,id:"$(item)"}].count int 1 run scoreboard players get $cc sg_config
$execute if score $cc sg_config matches ..0 run data remove block ~ ~ ~ Items[{Slot:$(s)b,id:"$(item)"}]
scoreboard players operation $need sg_config -= $take sg_config