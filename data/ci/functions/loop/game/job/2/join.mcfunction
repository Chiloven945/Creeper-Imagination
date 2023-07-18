#2加入

scoreboard players set @s job 2
execute as @s at @s run function ci:loop/map/randomtp/tpmap_decide
team join war @s
scoreboard players reset @s time_to_prepare
