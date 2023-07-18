#加入游戏tp
execute at @s run tp @s 5000 69 5000 facing 4999 69 5000
execute at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
tag @s add fresh
scoreboard players reset @s[tag=!no_change_job_choose] job_choose
tag @s remove respawning
scoreboard players reset @s respawn_time
scoreboard players reset @a leave_game
