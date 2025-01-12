execute if score $tool game_stage matches 1.. run tellraw @a [{"text": "× ","color": "red"},{"text": "等待当前已开始的游戏结束才可切换模式！","color": "red","underlined": true}]
execute unless score $tool game_stage matches 1.. run function tools:mode/toggle
