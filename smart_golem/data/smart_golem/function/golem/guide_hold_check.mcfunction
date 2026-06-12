execute store result score $mx sg_guide run data get entity @s Pos[0]
execute store result score $my sg_guide run data get entity @s Pos[1]
execute store result score $mz sg_guide run data get entity @s Pos[2]
execute unless score $mx sg_guide = $target_x sg_guide run function smart_golem:golem/guide_hold_add
execute if score $mx sg_guide = $target_x sg_guide unless score $my sg_guide = $target_y sg_guide run function smart_golem:golem/guide_hold_add
execute if score $mx sg_guide = $target_x sg_guide if score $my sg_guide = $target_y sg_guide unless score $mz sg_guide = $target_z sg_guide run function smart_golem:golem/guide_hold_add
