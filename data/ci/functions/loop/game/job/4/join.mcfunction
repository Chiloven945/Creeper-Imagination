#4加入

scoreboard players set @s job 4
execute as @s at @s run function ci:loop/map/randomtp/tpmap_decide
attribute @s minecraft:generic.max_health base set 16
team join war @s
scoreboard players reset @s time_to_prepare
