###末影人技能3###

#技能内容
execute as @a[tag=2_skill_3_start] at @s run playsound minecraft:entity.enderman.scream player @a[distance=..15] ~ ~ ~ 75 1 0.1
    execute as @a[tag=2_skill_3_start] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.35 1 0.35 0.1 20 force @a[distance=..15,tag=!no_particle]
    execute as @a[tag=2_skill_3_start] run tag @s add tpmap
    scoreboard players set @a[tag=2_skill_3_start] 2_skill_3_aim_time 82
    tag @a remove 2_skill_3_start

#技能触发
tag @a[scores={job=2},nbt={Inventory: [{Slot: -106b, id: "minecraft:allium"}]}] add 2_skill_3_start
    scoreboard players set @a[scores={job=2},nbt={Inventory: [{Slot: -106b, id: "minecraft:allium"}]}] cd_3 25
    item replace entity @a[scores={job=2},nbt={Inventory: [{Slot: -106b, id: "minecraft:allium"}]}] hotbar.2 with minecraft:green_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}} 1
    tag @a[scores={job=2},nbt={Inventory: [{Slot: -106b, id: "minecraft:allium"}]}] add 3_skill_cding
    clear @a[scores={job=2},nbt={Inventory: [{Slot: -106b, id: "minecraft:allium"}]}] minecraft:allium

#追踪时间
scoreboard players remove @a[scores={2_skill_3_aim_time=1..}] 2_skill_3_aim_time 1
    execute as @a[scores={2_skill_3_aim_time=1..}] at @s rotated as @s anchored eyes facing entity @p[distance=0.000001..] eyes run particle minecraft:glow ^ ^0.5 ^0.5 0 0 0 1 1 force @s
    execute as @a[scores={2_skill_3_aim_time=1..}] at @s rotated as @s anchored eyes facing entity @p[distance=0.000001..] eyes run particle minecraft:glow ^ ^0.5 ^2.5 0 0 0 1 1 force @s
    execute as @a[scores={2_skill_3_aim_time=1..}] at @s rotated as @s anchored eyes facing entity @p[distance=0.000001..] eyes run particle minecraft:glow ^ ^0.5 ^4.5 0 0 0 1 1 force @s
    execute as @a[scores={2_skill_3_aim_time=1..}] at @s rotated as @s anchored eyes facing entity @p[distance=0.000001..] eyes run particle minecraft:glow ^ ^0.5 ^6.5 0 0 0 1 1 force @s

#非cd锁定
execute as @a[scores={job=2},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:allium", Count: 1b}]}] run clear @s minecraft:allium
    execute as @a[scores={job=2},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:allium", Count: 1b}]}] run item replace entity @s hotbar.2 from block -4961 71 -5042 container.2

#循环
schedule function ci:loop/game/job/2_edm/skill/3_ts 1t append
