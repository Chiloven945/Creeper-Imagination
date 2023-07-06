#2加入
item replace entity @a[scores={job_choose=2},tag=option_join_war] hotbar.8 with minecraft:apple{display: {Name: '[{"text":"回血苹果","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]', Lore: ['{"text":"手持回血，期间移动取消回血","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}, HideFlags: 1} 1
scoreboard players set @a[scores={job_choose=2},tag=option_join_war] job 2
execute as @a[scores={job_choose=2},tag=option_join_war] at @s run tag @s add tpmap
team join war @a[tag=option_join_war]
tag @a[tag=option_join_war,scores={job=2}] remove option_join_war

#循环
schedule function ci:loop/game/job/2_edm/join 1t append
