#防止苦力怕在出生点爆炸
execute positioned 5000 69 5000 run tp @e[type=creeper,distance=..1] ~ -1000 ~

tag @a[tag=change_map_playsound] remove change_map_playsoud
tag @a[tag=option_2] remove option_2
tag @a[tag=option_3] remove option_3
execute as @a unless entity @s[scores={killed_by_creeper=0..}] run scoreboard players set @s killed_by_creeper 0

#循环
schedule function ci:loop/fix_bugs 1t append
