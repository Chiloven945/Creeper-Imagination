#加入游戏tp
execute as @a[scores={leave_game=1..}] at @s run tp @s 5000 69 5000 facing 4999 69 5000
execute as @a[scores={leave_game=1..}] at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
tag @a[scores={leave_game=1..}] add fresh
scoreboard players reset @a[scores={leave_game=1..},tag=!no_change_job_choose] job_choose
tag @a[tag=respawning,scores={leave_game=1..}] remove respawning
scoreboard players reset @a leave_game

#循环
schedule function ci:loop/game/join/tp 1t append
