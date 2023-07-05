#id绑定
scoreboard players operation @a[limit=1,tag=!id_binded] id = @e[tag=tool] id
scoreboard players add @e[tag=tool] id 1
tag @a[tag=!id_binded,scores={id=1..}] add id_binded

#循环
schedule function ci:loop/essential/id 1t append
