data modify block ~ ~ ~ auto set value 0b
execute as @e[type=item,scores={icb=524546}] positioned as @s at @p rotated ~-30 0 run summon item ^ ^1.32 ^3 {NoGravity:1b,PickupDelay:32767,Tags:["i","i1"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,scores={icb=524546}] positioned as @s at @p rotated ~-20 0 run summon item ^ ^1.32 ^3 {NoGravity:1b,PickupDelay:32767,Tags:["i","i2"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,scores={icb=524546}] positioned as @s at @p rotated ~-10 0 run summon item ^ ^1.32 ^3 {NoGravity:1b,PickupDelay:32767,Tags:["i","i3"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,scores={icb=524546}] positioned as @s at @p rotated ~0 0 run summon item ^ ^1.32 ^3 {NoGravity:1b,PickupDelay:32767,Tags:["i","i4"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,scores={icb=524546}] positioned as @s at @p rotated ~10 0 run summon item ^ ^1.32 ^3 {NoGravity:1b,PickupDelay:32767,Tags:["i","i5"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,scores={icb=524546}] positioned as @s at @p rotated ~20 0 run summon item ^ ^1.32 ^3 {NoGravity:1b,PickupDelay:32767,Tags:["i","i6"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,scores={icb=524546}] positioned as @s at @p rotated ~30 0 run summon item ^ ^1.32 ^3 {NoGravity:1b,PickupDelay:32767,Tags:["i","i7"],Item:{id:"minecraft:stone",Count:1b}}
execute as @e[type=item,scores={icb=524546}] run data modify entity @s Item.tag.cmd.tmp set from entity @s Pos
execute as @e[type=item,scores={icb=524546}] run data modify entity @s Pos set from entity @s Item.tag.cmd.ui.pos
execute as @e[type=item,tag=i1] positioned as @e[type=item,scores={icb=524546}] run data modify entity @s Item set from block ~ ~ ~ Items.[{Slot:0b}]
execute as @e[type=item,tag=i2] positioned as @e[type=item,scores={icb=524546}] run data modify entity @s Item set from block ~ ~ ~ Items.[{Slot:1b}]
execute as @e[type=item,tag=i3] positioned as @e[type=item,scores={icb=524546}] run data modify entity @s Item set from block ~ ~ ~ Items.[{Slot:2b}]
execute as @e[type=item,tag=i4] positioned as @e[type=item,scores={icb=524546}] run data modify entity @s Item set from block ~ ~ ~ Items.[{Slot:3b}]
execute as @e[type=item,tag=i5] positioned as @e[type=item,scores={icb=524546}] run data modify entity @s Item set from block ~ ~ ~ Items.[{Slot:4b}]
execute as @e[type=item,tag=i6] positioned as @e[type=item,scores={icb=524546}] run data modify entity @s Item set from block ~ ~ ~ Items.[{Slot:5b}]
execute as @e[type=item,tag=i7] positioned as @e[type=item,scores={icb=524546}] run data modify entity @s Item set from block ~ ~ ~ Items.[{Slot:6b}]
execute as @e[type=item,tag=i] run data merge entity @s {NoGravity:1b,PickupDelay:32767,Tags:["sxccheck"]}
tag @e[type=item,tag=i1] remove i1
tag @e[type=item,tag=i2] remove i2
tag @e[type=item,tag=i3] remove i3
tag @e[type=item,tag=i4] remove i4
tag @e[type=item,tag=i5] remove i5
tag @e[type=item,tag=i6] remove i6
tag @e[type=item,tag=i7] remove i7
tag @e[type=item,tag=i] remove i
execute as @e[type=item,scores={icb=524546}] run data modify entity @s Pos set from entity @s Item.tag.cmd.tmp
execute as @e[type=item,scores={icb=524546}] run data remove entity @s Item.tag.cmd.tmp
execute as @e[type=item,scores={icb=524546}] run scoreboard players reset @s icb