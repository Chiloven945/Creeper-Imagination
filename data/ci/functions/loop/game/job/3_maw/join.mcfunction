#3加入
item replace entity @a[scores={job_choose=3},tag=option_join_war] hotbar.8 with minecraft:apple{display: {Name: '[{"text":"回血苹果","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]', Lore: ['{"text":"手持回血，期间移动取消回血","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}, HideFlags: 1} 1
scoreboard players set @a[scores={job_choose=3},tag=option_join_war] job 3
execute as @a[scores={job_choose=3},tag=option_join_war] at @s run tag @s add tpmap
item replace entity @a[scores={job_choose=3},tag=option_join_war] hotbar.0 from entity @e[tag=3_skill_1_store_1,limit=1] weapon.mainhand
scoreboard players set @a[tag=option_join_war] 3_skill_1_change_true 1
attribute @a[scores={job_choose=3},tag=option_join_war,limit=1] minecraft:generic.max_health base set 18
team join war @a[tag=option_join_war]
tag @a[tag=option_join_war,scores={job=3}] remove option_join_war

#循环
schedule function ci:loop/game/job/3_maw/join 1t append
