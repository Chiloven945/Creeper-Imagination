#山下小河
execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=2,random_tpmap=1}] run tp @a[tag=tpmap] 20032 86 20024
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=2,random_tpmap=2}] run tp @a[tag=tpmap] 19990 77 20006
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=2,random_tpmap=3}] run tp @a[tag=tpmap] 19999 76 19971
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=2,random_tpmap=4}] run tp @a[tag=tpmap] 20040 70 19993
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=2,random_tpmap=5}] run tp @a[tag=tpmap] 20010 72 19997
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

#循环
schedule function ci:loop/map/rdtp/2 1t append

