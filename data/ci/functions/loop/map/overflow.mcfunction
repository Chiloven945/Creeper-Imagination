#溢出纠正
scoreboard players set @e[tag=tool,scores={map=5..}] map 1

#循环
schedule function ci:loop/map/overflow 1t append
