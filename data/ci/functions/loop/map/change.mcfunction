#更换地图
execute if entity @a[team=war] run scoreboard players add @e[tag=tool] change_map_time 1
execute if entity @e[tag=tool,scores={change_map_time=900..}] run scoreboard players add @e[tag=tool] map 1
execute if entity @e[tag=tool,scores={change_map_time=900..}] run tag @a[team=war] add btp
execute if entity @e[tag=tool,scores={change_map_time=900..}] run title @a title [{"text":"-◎|地图已更换|◎-","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute if entity @e[tag=tool,scores={change_map_time=900..}] run effect give @a minecraft:blindness 3 1 true
execute if entity @e[tag=tool,scores={change_map_time=900..}] run effect give @a minecraft:slowness 2 255 true
execute if entity @e[tag=tool,scores={change_map_time=900..}] run tag @a add change_map_playsound
execute if entity @e[tag=tool,scores={change_map_time=900..}] run tag @a[team=war] add fresh
execute if entity @e[tag=tool,scores={change_map_time=900..}] run tag @a[tag=respawning] add stop_respawn
execute if entity @e[tag=tool,scores={change_map_time=900..}] run scoreboard players reset @e[tag=tool] change_map_time
