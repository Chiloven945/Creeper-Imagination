#进游戏检查职业是否选择
execute as @s run title @s title [{"text":"请先选择职业","color":"red"}]
execute as @s at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 80 1
execute as @s run scoreboard players reset @s time_to_prepare
execute as @s run function ci:loop/essential/btp


