#3加入

scoreboard players set @s job 3
execute as @s at @s run function ci:loop/map/randomtp/tpmap_decide
scoreboard players set @s 3_skill_1_change_true 1
attribute @s minecraft:generic.max_health base set 18
team join war @s
scoreboard players reset @s time_to_prepare
