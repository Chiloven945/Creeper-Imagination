#绿潭
execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=1,random_tpmap=1}] run tp @a[tag=tpmap] 14971 71 15019
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=1,random_tpmap=2}] run tp @a[tag=tpmap] 15028 75 15011
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=1,random_tpmap=3}] run tp @a[tag=tpmap] 15024 71 14982
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=1,random_tpmap=4}] run tp @a[tag=tpmap] 15000 71 14976
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=1,random_tpmap=5}] run tp @a[tag=tpmap] 15004 72 14999
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

#循环
schedule function ci:loop/map/rdtp/1 1t append
