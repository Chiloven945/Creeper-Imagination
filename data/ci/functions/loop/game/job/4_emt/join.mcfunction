#4加入
item replace entity @a[scores={job_choose=4},tag=option_join_war] hotbar.8 with minecraft:apple{display: {Name: '[{"text":"回血苹果","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]', Lore: ['{"text":"手持回血，期间移动取消回血","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}, HideFlags: 1} 1
scoreboard players set @a[scores={job_choose=4},tag=option_join_war] job 4
execute as @a[scores={job_choose=4},tag=option_join_war] at @s run tag @s add tpmap
attribute @a[scores={job_choose=4},tag=option_join_war,limit=1] minecraft:generic.max_health base set 16
team join war @a[tag=option_join_war]
tag @a[tag=option_join_war,scores={job=4}] remove option_join_war

#循环
schedule function ci:loop/game/job/4_emt/join 1t append
