#城间酷跑
execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=4,random_tpmap=1}] run tp @a[tag=tpmap] 30000 82.5 30025
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=4,random_tpmap=2}] run tp @a[tag=tpmap] 29980 92.5 30010
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=4,random_tpmap=3}] run tp @a[tag=tpmap] 29954 83.5 29976
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=4,random_tpmap=4}] run tp @a[tag=tpmap] 29983 80 29981
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

execute if entity @a[tag=tpmap] if entity @e[tag=tool,scores={map=4,random_tpmap=5}] run tp @a[tag=tpmap] 30032 80 30029
    execute as @a[tag=tpmap] at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 10 0.1
    tag @a[tag=tpmap] remove tpmap

#循环
schedule function ci:loop/map/rdtp/4 1t append
