#触发停止激活
function ci:loop/essential/btp
scoreboard players reset @s respawn_time
tag @s remove respawning
attribute @s minecraft:generic.max_health base set 20

