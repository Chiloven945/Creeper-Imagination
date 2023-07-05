###粒子效果###

#画后
execute positioned 4989 67 4978 as @a[distance=..30,tag=!explored_1,tag=!explore_1] run particle minecraft:scrape ~ ~0.3 ~ 0.5 0.5 0.5 0.05 1 force @s
execute positioned 4989 67 4978 as @a[distance=..30,tag=explored_1] run particle minecraft:crit ~ ~0.3 ~ 0.3 0.3 0.3 0.00001 3 force @s

#阁楼
execute positioned 4983 81 5000 as @a[distance=..30,tag=!explored_2,tag=!explore_2] run particle minecraft:scrape ~ ~0.3 ~ 0.3 0.3 0.3 0.05 1 force @s
execute positioned 4983 81 5000 as @a[distance=..30,tag=explored_2] run particle minecraft:crit ~ ~0.3 ~ 0.3 0.3 0.3 0.00001 3 force @s

#水道
execute positioned 4976 50 5000 as @a[distance=..30,tag=!explored_3,tag=!explore_3] run particle minecraft:scrape ~ ~0.3 ~ 0.3 0.3 0.3 0.05 1 force @s
execute positioned 4976 50 5000 as @a[distance=..30,tag=explored_3] run particle minecraft:crit ~ ~0.3 ~ 0.3 0.3 0.3 0.00001 3 force @s

#女巫
execute positioned 15031 67 15011 as @a[distance=..30,tag=!explored_4,tag=!explore_4] run particle minecraft:scrape ~ ~0.3 ~ 0.3 0.3 0.3 0.05 1 force @s
execute positioned 15031 67 15011 as @a[distance=..30,tag=explored_4] run particle minecraft:crit ~ ~0.3 ~ 0.3 0.3 0.3 0.00001 3 force @s

#地牢
execute positioned 20017 60 20014 as @a[distance=..30,tag=!explored_5,tag=!explore_5] run particle minecraft:scrape ~ ~0.3 ~ 0.3 0.3 0.3 0.05 1 force @s
execute positioned 20017 60 20014 as @a[distance=..30,tag=explored_5] run particle minecraft:crit ~ ~0.3 ~ 0.3 0.3 0.3 0.00001 3 force @s

#循环
schedule function ci:loop/explore/particle 1t append
