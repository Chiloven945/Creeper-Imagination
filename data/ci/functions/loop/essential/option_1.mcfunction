#选择职业传送
execute as @a[tag=option_1] at @s run tp @s 4980 75 5000 facing 4981.5 75.5 5000.5
execute as @a[tag=option_1] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 75 1
tag @a remove option_1

#循环
schedule function ci:loop/essential/option_1 1t append
