###苦力怕技能2###

#技能触发
tag @a[scores={1_skill_2_test=1..,job=1}] add 1_skill_2_start
    scoreboard players set @a[scores={1_skill_2_test=1..,job=1}] cd_2 6
    item replace entity @a[scores={job=1,1_skill_2_test=1..}] hotbar.1 with minecraft:yellow_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}} 1
    tag @a[scores={job=1,1_skill_2_test=1..}] add 2_skill_cding
    clear @a[scores={job=1,1_skill_2_test=1..}] minecraft:crossbow
    scoreboard players reset @a 1_skill_2_test

execute as @a[tag=1_skill_2_start] at @s run playsound minecraft:item.firecharge.use player @a[distance=..15] ~ ~ ~ 90 0.5 0.1
    execute as @a[tag=1_skill_2_start] at @s run particle minecraft:effect ~ ~0.5 ~ 0.35 0.05 0.35 0.1 10 force @a[distance=..15,tag=!no_particle]
    tag @a remove 1_skill_2_start

#非cd锁定
execute as @a[scores={job=1},tag=!2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:crossbow", Count: 1b}]}] run clear @s minecraft:crossbow
    execute as @a[scores={job=1},tag=!2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:crossbow", Count: 1b}]}] run item replace entity @s hotbar.1 from block -4961 71 -5025 container.1

#循环
schedule function ci:loop/game/job/1_crp/skill/2_re 1t append
