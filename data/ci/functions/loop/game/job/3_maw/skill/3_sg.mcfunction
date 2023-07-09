###魔艺技能3###

#技能内容
execute as @a[tag=3_skill_3_start] at @s run playsound minecraft:entity.vex.hurt player @a[distance=..15] ~ ~ ~ 75 1 0.1
    execute as @a[tag=3_skill_3_start] at @s run particle minecraft:totem_of_undying ~ ~0.5 ~ 0.35 1 0.35 0.1 20 force @a[distance=..15,tag=!no_particle]
    execute as @a[tag=3_skill_3_start] at @s positioned ~ ~-2 ~ run summon minecraft:armor_stand ~ ~1 ~ {CustomName: '[{"text":"礼盒","color":"dark_purple","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]', Tags: ["3_skill_3_spawn"], CustomNameVisible: 0b, NoAI: 1b, Invulnerable: 1b, PersistenceRequired: 1b, Silent: 1b, NoGravity: 1b, ArmorItems: [{}, {}, {}, {id: "minecraft:ender_chest", Count: 1b}], Invisible: 1, Rotation: [0f], Pose: {Head: [0f, 0f, 0f], Body: [0f, 0f, 0f], LeftArm: [0f, 0f, 0f], RightArm: [0f, 0f, 0f], LeftLeg: [0f, 0f, 0f], RightLeg: [0f, 0f, 0f]}}
    execute as @e[tag=3_skill_3_spawn] unless entity @s[scores={id=1..}] run scoreboard players operation @s id = @a[tag=3_skill_3_start] id
    tag @a remove 3_skill_3_start

#技能触发
tag @a[scores={job=3},nbt={Inventory: [{Slot: -106b, id: "minecraft:chest"}]}] add 3_skill_3_start
    scoreboard players set @a[scores={job=3},nbt={Inventory: [{Slot: -106b, id: "minecraft:chest"}]}] cd_3 15
    tag @a[scores={job=3},nbt={Inventory: [{Slot: -106b, id: "minecraft:chest"}]}] add 3_skill_cding
    clear @a[scores={job=3},nbt={Inventory: [{Slot: -106b, id: "minecraft:chest"}]}] minecraft:chest

#时间
execute as @e[tag=3_skill_3_spawn] at @s run scoreboard players add @s 3_skill_3_spawn_time 1
    item replace entity @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40}] armor.head with chest 1

#自己碰到
execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40..}] at @s positioned ~ ~1.4 ~ if entity @p[distance=..0.5] if score @p id = @s id run tag @p add 3_skill_3_mark
    execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40..}] at @s positioned ~ ~1.4 ~ if entity @p[distance=..0.5] if score @p id = @s id run playsound minecraft:item.totem.use player @a[distance=..15] ~ ~ ~ 25 0.5 0.1
    execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40..}] at @s positioned ~ ~1.4 ~ if entity @p[distance=..0.5] if score @p id = @s id run kill @s

#别人碰到
execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40..}] at @s positioned ~ ~1.4 ~ if entity @a[distance=..0.5] unless score @a[distance=..0.5,limit=1] id = @s id run effect give @a[distance=..0.5] minecraft:wither 7 0 false
    execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40..}] at @s positioned ~ ~1.4 ~ if entity @a[distance=..0.5] unless score @a[distance=..0.5,limit=1] id = @s id run effect give @a[distance=..0.5] minecraft:slowness 7 0 false
    execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40..}] at @s positioned ~ ~1.4 ~ if entity @a[distance=..0.5] unless score @a[distance=..0.5,limit=1] id = @s id run effect give @a[distance=..0.5] minecraft:blindness 7 0 false
    execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40..}] at @s positioned ~ ~1.4 ~ if entity @a[distance=..0.5] unless score @a[distance=..0.5,limit=1] id = @s id run playsound minecraft:item.totem.use player @a[distance=..15] ~ ~ ~ 50 0.5 1
    execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=40..}] at @s positioned ~ ~1.4 ~ if entity @a[distance=..0.5] unless score @a[distance=..0.5,limit=1] id = @s id run kill @s

#粒子
execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=45..}] at @s run particle minecraft:dripping_lava ~ ~1 ~ 0.2 0 0.2 0.01 3 force @a[distance=..15,tag=!no_particle]

execute as @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=5..40}] at @s run particle minecraft:dripping_water ~ ~1 ~ 0.2 0 0.2 0.01 3 force @a[distance=..15,tag=!no_particle]

#到点送走
kill @e[tag=3_skill_3_spawn,scores={3_skill_3_spawn_time=220}]

#非cd锁定
execute as @a[scores={job=3},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:chest", Count: 1b}]}] run clear @s minecraft:chest
    execute as @a[scores={job=3},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:chest", Count: 1b}]}] run item replace entity @s hotbar.2 from block -4961 71 -5058 container.2

#循环
schedule function ci:loop/game/job/3_maw/skill/3_sg 1t append
