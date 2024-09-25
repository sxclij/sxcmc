execute as @e[type=item,tag=!sxccheck] store result score @s sxcscore run data get entity @s Item.tag.cmd.cb.id
execute as @e[type=item,tag=!sxccheck,scores={sxcscore=1..}] run data modify entity @s Item.tag.cmd.tmp set from entity @s Pos
execute as @e[type=item,tag=!sxccheck,scores={sxcscore=1..}] run data modify entity @s Pos set from entity @s Item.tag.cmd.cb.pos
execute positioned as @e[type=item,tag=!sxccheck,scores={sxcscore=1..}] run data modify block ~ ~ ~ auto set value 1b
execute as @e[type=item,tag=!sxccheck,scores={sxcscore=1..}] run data modify entity @s Pos set from entity @s Item.tag.cmd.tmp
execute as @e[type=item,tag=!sxccheck,scores={sxcscore=1..}] run data remove entity @s Item.tag.cmd.tmp
execute as @e[type=item,tag=!sxccheck,scores={sxcscore=0}] run scoreboard players reset @s sxcscore
tag @e[type=item,tag=!sxccheck] add sxccheck