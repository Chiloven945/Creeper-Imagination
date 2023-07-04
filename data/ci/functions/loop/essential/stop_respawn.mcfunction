#触发停止激活
tag @a[tag=stop_respawn] add btp
scoreboard players reset @a[tag=stop_respawn] respawn_time
tag @a[tag=stop_respawn] remove respawning
attribute @a[tag=stop_respawn,limit=1] minecraft:generic.max_health base set 20
tag @a[tag=stop_respawn] remove stop_respawn

#循环
schedule function ci:loop/essential/stop_respawn 1t append