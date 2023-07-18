#随机
scoreboard players add @e[tag=tool] random_tpmap 1
scoreboard players set @e[tag=tool,scores={random_tpmap=6..}] random_tpmap 1

#循环
schedule function ci:loop/map/randomtp/set_random 1t append
