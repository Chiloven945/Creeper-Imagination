#进游戏检查职业是否选择
execute as @a[tag=option_join_war] unless entity @s[scores={job_choose=1..}] run title @s title [{"text":"请先选择职业","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    execute as @a[tag=option_join_war] unless entity @s[scores={job_choose=1..}] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 80 1
    execute as @a[tag=option_join_war] unless entity @s[scores={job_choose=1..}] run tag @s remove option_join_war

#循环
schedule function ci:loop/game/join/check 1t append
