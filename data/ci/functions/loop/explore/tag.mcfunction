###标签###

#画后
execute positioned 4989 67 4978 as @a[distance=..0.5,tag=!explored_1,tag=!explore_1] run tag @s add explore_1

#阁楼
execute positioned 4983 81 5000 as @a[distance=..0.5,tag=!explored_2,tag=!explore_2] run tag @s add explore_2

#水道
execute positioned 4976 50 5000 as @a[distance=..0.5,tag=!explored_3,tag=!explore_3] run tag @s add explore_3

#女巫
execute positioned 15031 67 15011 as @a[distance=..0.5,tag=!explored_4,tag=!explore_4] run tag @s add explore_4

#地牢
execute positioned 20017 60 20014 as @a[distance=..0.5,tag=!explored_5,tag=!explore_5] run tag @s add explore_5

#循环
schedule function ci:loop/explore/tag 1t append
