###苦力怕被动###

#召唤出来苦力怕
execute as @e[tag=1_skill_10_detect,tag=1_skill_10_start] at @s run summon minecraft:creeper ~ ~-100 ~ {CustomName: '[{"text":"神秘苦力怕-亡语","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]', Tags: ["1_skill_10_spawn"], CustomNameVisible: 0b, NoAI: 1b, PersistenceRequired: 1b, ignited: 1b, ExplosionRadius: 4, Fuse: 25}
    execute as @e[tag=1_skill_10_spawn] unless entity @s[scores={id=1..}] run scoreboard players operation @s id = @e[tag=1_skill_10_start] id
    kill @e[tag=1_skill_10_detect,tag=1_skill_10_start]

#触发
execute as @e[tag=1_skill_10_detect,scores={id=1..}] at @r[team=peace] if score @p id = @s id run tag @s add 1_skill_10_start
    scoreboard players reset @a 1_skill_10_death_test

#传送
execute as @e[tag=1_skill_10_detect,scores={id=1..}] at @r[team=war] if score @p id = @s id unless entity @p[scores={1_skill_10_death_test=1..}] run tp @s ~ ~100 ~

#非cd锁定
execute as @a[scores={job=1}] unless entity @s[nbt={Inventory: [{Slot: 9b, id: "minecraft:tnt", Count: 1b}]}] run clear @s minecraft:tnt 1
execute as @a[scores={job=1}] unless entity @s[nbt={Inventory: [{Slot: 9b, id: "minecraft:tnt", Count: 1b}]}] run item replace entity @s inventory.0 from block -4961 71 -5025 container.9

#循环
schedule function ci:loop/game/job/1_crp/skill/p 1t append
