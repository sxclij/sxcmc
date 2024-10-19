data modify block ~ ~ ~ auto set value 0b
execute as @e[type=item,scores={icb=327938}] run tag @e[type=item,nbt=!{Item:{tag:{cmd:{cb:{type:[drop]}}}}},sort=nearest,limit=1] add i1
execute as @e[type=item,tag=i1] positioned as @s align xyz run tp @s ~ ~ ~1
execute as @e[type=item,tag=i1] store result score @s t1 run data get entity @s Pos.[0] 1
execute as @e[type=item,tag=i1] store result score @s t2 run data get entity @s Pos.[1] 256
execute as @e[type=item,tag=i1] store result score @s t3 run data get entity @s Pos.[2] 65536
execute as @e[type=item,tag=i1] store result score @s t1 run scoreboard players operation @s t1 += @s t2
execute as @e[type=item,tag=i1] store result score @s t1 run scoreboard players operation @s t1 += @s t3
execute as @e[type=item,tag=i1] store result entity @s Item.tag.cmd.cb.id int 1 run scoreboard players get @s t1
execute as @e[type=item,tag=i1] run data modify entity @s Item.tag.cmd.cb.pos set from entity @s Pos
execute as @e[type=item,tag=i1] run data modify entity @s Item.tag.cmd.cb.type set value [drop]
execute as @e[type=item,tag=i1] at @s run tellraw @p {"entity":"@s","nbt":"Item.tag.cmd.cb"}
execute as @e[type=item,scores={icb=327938}] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,scores={icb=327938}] run scoreboard players reset @s icb
tag @e[type=item,tag=i1] remove i1