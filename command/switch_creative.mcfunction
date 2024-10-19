data modify block ~ ~ ~ auto set value 0b
execute at @e[type=item,scores={icb=526344}] run gamemode creative @p
execute as @e[type=item,scores={icb=526344}] run data modify entity @s PickupDelay set value 0
execute as @e[type=item,scores={icb=526344}] run scoreboard players reset @s icb