#1加入
item replace entity @a[scores={job_choose=1},tag=option_join_war] hotbar.8 with minecraft:apple{display: {Name: '[{"text":"回血苹果","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]', Lore: ['{"text":"手持回血，期间移动取消回血","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']}, HideFlags: 1} 1
scoreboard players set @a[scores={job_choose=1},tag=option_join_war] job 1
execute as @a[scores={job_choose=1},tag=option_join_war] at @s run tag @s add tpmap
attribute @a[scores={job_choose=1},tag=option_join_war,limit=1] minecraft:generic.max_health base set 16
execute as @a[scores={job_choose=1},tag=option_join_war] at @s run summon minecraft:armor_stand ~ ~10 ~ {Tags: ["1_skill_10_detect"], CustomNameVisible: 0b, NoAI: 1b, Invulnerable: 1b, Silent: 1b, NoGravity: 1b, Rotation: [0f], Pose: {Head: [0f, 0f, 0f], Body: [0f, 0f, 0f], LeftArm: [0f, 0f, 0f], RightArm: [0f, 0f, 0f], LeftLeg: [0f, 0f, 0f], RightLeg: [0f, 0f, 0f]}, Invisible: 1}
execute as @e[tag=1_skill_10_detect] unless entity @s[scores={id=1..}] run scoreboard players operation @s id = @a[scores={job_choose=1},tag=option_join_war] id
team join war @a[tag=option_join_war]
tag @a[tag=option_join_war,scores={job=1}] remove option_join_war

#循环
schedule function ci:loop/game/job/1_crp/join 1t append
