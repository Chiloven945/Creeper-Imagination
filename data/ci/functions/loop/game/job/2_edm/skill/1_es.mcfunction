###末影人技能1###

#技能内容
execute as @a[tag=2_skill_1_start] at @s run playsound minecraft:item.shield.break player @a[distance=..15] ~ ~ ~ 75 1 0.1
    execute as @a[tag=2_skill_1_start] at @s run particle minecraft:soul ~ ~0.5 ~ 0.35 0.05 0.35 0.1 10 force @a[distance=..15,tag=!no_particle]
    tag @a remove 2_skill_1_start

#技能触发
tag @a[scores={2_skill_1_test=1..,job=2}] add 2_skill_1_startd
    scoreboard players set @a[scores={2_skill_1_test=1..,job=2}] cd_1 3
    item replace entity @a[scores={job=2,2_skill_1_test=1..}] hotbar.0 with minecraft:red_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}} 1
    tag @a[scores={job=2,2_skill_1_test=1..}] add 1_skill_cding
    clear @a[scores={job=2,2_skill_1_test=1..}] minecraft:stone_sword
    scoreboard players reset @a 2_skill_1_test

#非cd锁定
execute as @a[scores={job=2},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_sword", Count: 1b}]}] run clear @s minecraft:stone_sword
    execute as @a[scores={job=2},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_sword", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4961 71 -5042 container.0

#循环
schedule function ci:loop/game/job/2_edm/skill/1_es 1t append
