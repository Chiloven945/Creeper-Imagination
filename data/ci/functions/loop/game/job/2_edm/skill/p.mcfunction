###末影人被动###

#技能内容
execute as @a[tag=2_skill_10_start] at @s run playsound minecraft:entity.enderman.hurt player @a[distance=..15] ~ ~ ~ 85 1 0.1
    execute as @a[tag=2_skill_10_start] at @s run particle minecraft:dust 0.7 0.1 1 0.6 ~ ~0.5 ~ 0.35 1 0.35 0.1 20 force @a[distance=..15,tag=!no_particle]
    execute as @a[tag=2_skill_10_start] run tag @s add 2_skill_3_start
    tag @a remove 2_skill_10_start

#技能触发
execute as @a[scores={2_skill_10_test=80..,job=2},tag=!fresh,team=war] unless entity @s[scores={death_test=1..}] run tag @s add 2_skill_10_start
    execute as @a[scores={2_skill_10_test=80..,job=2},tag=!fresh,team=war] unless entity @s[scores={death_test=1..}] run scoreboard players set @s cd_10 50
    execute as @a[scores={job=2,2_skill_10_test=80..},tag=!fresh,team=war] unless entity @s[scores={death_test=1..}] run item replace entity @s inventory.0 with minecraft:blue_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}} 1
    execute as @a[scores={job=2,2_skill_10_test=80..},tag=!fresh,team=war] unless entity @s[scores={death_test=1..}] run tag @s add 10_skill_cding
    execute as @a[scores={job=2,2_skill_10_test=80..},tag=!fresh,team=war] unless entity @s[scores={death_test=1..}] run clear @s minecraft:melon_seeds
    scoreboard players reset @a 2_skill_10_test

#非cd锁定
execute as @a[scores={job=2},tag=!10_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 9b, id: "minecraft:melon_seeds", Count: 1b}]}] run clear @s minecraft:melon_seeds
    execute as @a[scores={job=2},tag=!10_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 9b, id: "minecraft:melon_seeds", Count: 1b}]}] run item replace entity @s inventory.0 from block -4961 71 -5042 container.9

#循环
schedule function ci:loop/game/job/2_edm/skill/p 1t append
