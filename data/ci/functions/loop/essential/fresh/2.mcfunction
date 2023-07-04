#刷新
execute positioned 5000 69 5000 run tag @a[distance=..5,scores={death_test=1..}] add respawning
execute positioned 5000 69 5000 run tp @a[distance=..5,scores={death_test=1..}] 8 1 8
tag @a[scores={death_test=1..}] add fresh
scoreboard players reset @a[scores={death_test=1..}] death_test

#已在tick循环，无需schedule
