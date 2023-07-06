#更换地图声音
execute positioned 5000 70 5000 as @a[tag=change_map_playsound,distance=..10] run playsound minecraft:entity.ender_dragon.ambient player @s 5000 70 5000 80 1 0.4
execute positioned 5000 70 5000 as @a[tag=change_map_playsound,distance=..10] run playsound minecraft:entity.ender_dragon.growl player @s 5000 70 5000 80 1 0.4
tag @a[tag=change_map_playsound] remove change_map_playsound

#循环
schedule function ci:loop/map/playsound 1t append
