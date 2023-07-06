#绿潭
execute if entity @e[tag=tool,scores={map=1}] run bossbar set minecraft:map color green
execute if entity @e[tag=tool,scores={map=1}] run bossbar set minecraft:map name [{"text":"☆地图☆","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"→","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"★绿潭★","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#山下小河
execute if entity @e[tag=tool,scores={map=2}] run bossbar set minecraft:map color blue
execute if entity @e[tag=tool,scores={map=2}] run bossbar set minecraft:map name [{"text":"☆地图☆","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"→","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"★山下小河★","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#沙漠遗址
execute if entity @e[tag=tool,scores={map=3}] run bossbar set minecraft:map color yellow
execute if entity @e[tag=tool,scores={map=3}] run bossbar set minecraft:map name [{"text":"☆地图☆","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"→","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"★沙漠遗址★","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#城间酷跑
execute if entity @e[tag=tool,scores={map=4}] run bossbar set minecraft:map color pink
execute if entity @e[tag=tool,scores={map=4}] run bossbar set minecraft:map name [{"text":"☆地图☆","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"→","color":"yellow","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"★城间酷跑★","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

#循环
schedule function ci:loop/map/bossbar/style 1t append
