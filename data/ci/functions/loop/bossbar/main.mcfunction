#显示
bossbar set minecraft:map players @a

#显示时间
execute store result bossbar minecraft:map value run scoreboard players get @e[limit=1,tag=tool] change_map_time

#循环
schedule function ci:loop/bossbar/main 1t append
