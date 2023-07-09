###魔艺技能2###

#技能内容
execute as @a[tag=3_skill_2_start] at @s run playsound minecraft:entity.guardian.hurt player @a[distance=..15] ~ ~ ~ 85 1 0.1
    execute as @a[tag=3_skill_2_start] at @s run particle minecraft:crit ~ ~0.5 ~ 0.3 0.6 0.3 0.01 50 force @a[distance=..15,tag=!no_particle]
    execute as @a[tag=3_skill_2_start] at @s run summon minecraft:bat ~ ~1 ~ {Tags: ["3_skill_2_spawn", "will_be_killed"], CustomNameVisible: 0b, Health: 1, Attributes: [{Name: "generic.max_health", Base: 1}]}
    execute as @a[tag=3_skill_2_start] at @s run summon minecraft:bat ~1 ~ ~ {Tags: ["3_skill_2_spawn", "will_be_killed"], CustomNameVisible: 0b, Health: 1, Attributes: [{Name: "generic.max_health", Base: 1}]}
    execute as @a[tag=3_skill_2_start] at @s run summon minecraft:bat ~ ~ ~1 {Tags: ["3_skill_2_spawn", "will_be_killed"], CustomNameVisible: 0b, Health: 1, Attributes: [{Name: "generic.max_health", Base: 1}]}
    execute as @a[tag=3_skill_2_start] at @s run summon minecraft:bat ~0.75 ~ ~0.75 {Tags: ["3_skill_2_spawn", "will_be_killed"], CustomNameVisible: 0b, Health: 1, Attributes: [{Name: "generic.max_health", Base: 1}]}
    execute as @a[tag=3_skill_2_start] at @s run summon minecraft:bat ~-0.75 ~ ~0.75 {Tags: ["3_skill_2_spawn", "will_be_killed"], CustomNameVisible: 0b, Health: 1, Attributes: [{Name: "generic.max_health", Base: 1}]}
    execute as @a[tag=3_skill_2_start] at @s run summon minecraft:bat ~0.75 ~ ~-0.75 {Tags: ["3_skill_2_spawn", "will_be_killed"], CustomNameVisible: 0b, Health: 1, Attributes: [{Name: "generic.max_health", Base: 1}]}
    execute as @a[tag=3_skill_2_start] at @s run summon minecraft:bat ~-0.75 ~ ~-0.75 {Tags: ["3_skill_2_spawn", "will_be_killed"], CustomNameVisible: 0b, Health: 1, Attributes: [{Name: "generic.max_health", Base: 1}]}
    execute as @a[tag=3_skill_2_start] at @s rotated as @s anchored eyes if block ^ ^ ^1 air run tp @s ^ ^-1.2 ^1
    execute as @a[tag=3_skill_2_start] at @s rotated as @s anchored eyes if block ^ ^ ^1 air run tp @s ^ ^-1.2 ^1
    execute as @a[tag=3_skill_2_start] at @s rotated as @s anchored eyes if block ^ ^ ^1 air run tp @s ^ ^-1.5 ^1
    execute as @a[tag=3_skill_2_start] at @s rotated as @s anchored eyes if block ^ ^ ^1 air run tp @s ^ ^-1.5 ^1
    execute as @a[tag=3_skill_2_start] at @s rotated as @s anchored eyes if block ^ ^ ^1 air run tp @s ^ ^-1.5 ^1
    execute as @a[tag=3_skill_2_start] at @s rotated as @s anchored eyes if block ^ ^ ^1 air run tp @s ^ ^-1.5 ^1
    execute as @a[tag=3_skill_2_start] at @s rotated as @s anchored eyes if block ^ ^ ^1 air run tp @s ^ ^-1.5 ^1
    execute as @a[tag=3_skill_2_start] at @s run tag @s remove 3_skill_2_start

#技能触发
tag @a[scores={job=3},nbt={Inventory: [{Slot: -106b, id: "minecraft:end_crystal"}]}] add 3_skill_2_start
    scoreboard players set @a[scores={job=3},nbt={Inventory: [{Slot: -106b, id: "minecraft:end_crystal"}]}] cd_2 10
    item replace entity @a[scores={job=2},nbt={Inventory: [{Slot: -106b, id: "minecraft:end_crystal"}]}] hotbar.1 with minecraft:green_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}} 1
    tag @a[scores={job=3},nbt={Inventory: [{Slot: -106b, id: "minecraft:end_crystal"}]}] add 2_skill_cding
    clear @a[scores={job=3},nbt={Inventory: [{Slot: -106b, id: "minecraft:end_crystal"}]}] minecraft:end_crystal

#kill掉蝙蝠
scoreboard players add @e[tag=will_be_killed] time_to_die 1
    kill @e[tag=will_be_killed,scores={time_to_die=120..}]

#非cd锁定
execute as @a[scores={job=3},tag=!2_skill_cding] unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:end_crystal",Count:1b}]}] run clear @s minecraft:end_crystal
    execute as @a[scores={job=3},tag=!2_skill_cding] unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:end_crystal",Count:1b}]}] run item replace entity @s hotbar.1 from block -4961 71 -5058 container.1

#循环
schedule function ci:loop/game/job/3_maw/skill/2_bt 1t append
