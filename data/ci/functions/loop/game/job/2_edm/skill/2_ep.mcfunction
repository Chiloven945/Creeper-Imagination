###末影人技能2###

#技能内容
execute as @a[tag=2_skill_2_start] at @s run playsound minecraft:block.enchantment_table.use player @a[distance=..15] ~ ~ ~ 75 1 0.1
    execute as @a[tag=2_skill_2_start] at @s run particle minecraft:portal ~ ~0.5 ~ 0.35 1 0.35 0.1 20 force @a[distance=..15,tag=!no_particle]
    execute as @a[tag=2_skill_2_start] run effect give @s minecraft:absorption 5 1 true
    tag @a remove 2_skill_2_start

#技能触发
tag @a[scores={2_skill_2_test=1..,job=2}] add 2_skill_2_start
    scoreboard players set @a[scores={2_skill_2_test=1..,job=2}] cd_2 15
    item replace entity @a[scores={job=2,2_skill_2_test=1..}] hotbar.1 with minecraft:yellow_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}} 1
    tag @a[scores={job=2,2_skill_2_test=1..}] add 2_skill_cding
    clear @a[scores={job=2,2_skill_2_test=1..}] minecraft:ender_pearl
    scoreboard players reset @a 2_skill_2_test

#非cd锁定
execute as @a[scores={job=2},tag=!2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:ender_pearl", Count: 1b}]}] run clear @s minecraft:ender_pearl
    execute as @a[scores={job=2},tag=!2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:ender_pearl", Count: 1b}]}] run item replace entity @s hotbar.1 from block -4961 71 -5042 container.1

#循环
schedule function ci:loop/game/job/2_edm/skill/2_ep 1t append
