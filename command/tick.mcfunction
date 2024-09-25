execute as @e[type=item,tag=!sxctesttag] unless score @s sxctestscore matches 0.. run data get entity @s Item.components."minecraft:custom_data".sxclijcustomdata.id
execute as @e[type=item,scores={sxctestscore=1..}] run data modify entity @s Item.components."minecraft:custom_data".sxclijcustomdata.tmp set from entity @s Pos
execute as @e[type=item,scores={sxctestscore=1..}] run data modify entity @s Pos set from entity @s Item.components."minecraft:custom_data".sxclijcustomdata.pos
execute positioned as @e[type=item,scores={sxctestscore=1..}] run data modify block ~ ~ ~ auto set value 1b
execute as @e[type=item,scores={sxctestscore=1..}] run data modify entity @s Pos set from entity @s Item.components."minecraft:custom_data".sxclijcustomdata.tmp
tag @e[type=item,tag=!sxctesttag] add sxctesttag