#沙漠遗址
execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=3,random_tpmap=1}] run tp @a[tag=tpmap] 25026 87.5 24981
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=3,random_tpmap=2}] run tp @a[tag=tpmap] 25004 78.5 25014
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=3,random_tpmap=3}] run tp @a[tag=tpmap] 24972 87.5 25011
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=3,random_tpmap=4}] run tp @a[tag=tpmap] 24972 79 24973
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=3,random_tpmap=5}] run tp @a[tag=tpmap] 25000 70.5 24997
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

#循环
schedule function ci:loop/map/rdtp/3 1t append
