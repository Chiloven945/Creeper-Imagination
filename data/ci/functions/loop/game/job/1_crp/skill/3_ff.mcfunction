###苦力怕技能3###

#效果给予
execute as @a[scores={1_skill_3_effect_time=..200}] at @s unless block ~ ~-0.5 ~ air run scoreboard players reset @s 1_skill_3_effect_time
scoreboard players remove @a[scores={1_skill_3_effect_time=1..}] 1_skill_3_effect_time 1
    execute as @a[scores={1_skill_3_effect_time=200..}] at @s if block ~ ~-0.5 ~ air run effect give @s minecraft:levitation 1 255 true
    execute as @a[scores={1_skill_3_effect_time=1..}] at @s if block ~ ~-0.5 ~ air run effect give @s minecraft:slow_falling 1 0 true

#传送
execute positioned as @e[tag=1_skill_3_spawn,scores={id=1..}] as @r[team=war,distance=..300] if score @s id = @e[distance=..2,limit=1] id unless entity @s[scores={1_skill_3_death_test=1..}] run tp @s ~ ~-1.5 ~

#检测team=peace击杀
execute as @e[tag=1_skill_3_spawn,scores={id=1..}] if score @r[team=peace] id = @s id run kill @s
    scoreboard players reset @a 1_skill_3_death_test

#技能内容
execute at @a[tag=1_skill_3_start] run summon minecraft:firework_rocket ~ ~1.5 ~ {CustomName: '[{"text":"升天烟花","color":"dark_green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]', Tags: ["1_skill_3_spawn"], CustomNameVisible: 0b, Glowing: 1b, PersistenceRequired: 1b, Attributes: [{Name: "generic.attackDamage", Base: -5}], FireworksItem: {tag: {Fireworks: {Flight: 1, Explosions: [{Trail: 1b, Flicker: 1b, Type: 3, Colors: [I; 1092096], FadeColors: [I; 327593]}]}}, id: "minecraft:firework_rocket", Count: 1}, Life: 0, LifeTime: 30}
    execute as @e[tag=1_skill_3_spawn] unless entity @s[scores={id=1..}] run scoreboard players operation @s id = @a[tag=1_skill_3_start] id
    scoreboard players set @e[tag=1_skill_3_start] 1_skill_3_effect_time 250
    effect give @a[tag=1_skill_3_start] minecraft:levitation 1 255 true
    effect give @a[tag=1_skill_3_start] minecraft:slow_falling 1 0 true
    tag @a[tag=1_skill_3_start] remove 1_skill_3_start

#技能触发
execute as @a[scores={job=1},nbt={Inventory: [{Slot: -106b, id: "minecraft:firework_rocket"}]}] run tag @s add 1_skill_3_start
    execute as @a[scores={job=1},nbt={Inventory: [{Slot: -106b, id: "minecraft:firework_rocket"}]}] run scoreboard players set @s cd_3 20
    execute as @a[scores={job=1},nbt={Inventory: [{Slot: -106b, id: "minecraft:firework_rocket"}]}] run item replace entity @s hotbar.2 with minecraft:green_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}} 1
    execute as @a[scores={job=1},nbt={Inventory: [{Slot: -106b, id: "minecraft:firework_rocket"}]}] run tag @s add 3_skill_cding
    execute as @a[scores={job=1},nbt={Inventory: [{Slot: -106b, id: "minecraft:firework_rocket"}]}] run clear @s minecraft:firework_rocket

#非cd锁定
execute as @a[scores={job=1},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:firework_rocket", Count: 1b}]}] run clear @s minecraft:firework_rocket 1
    execute as @a[scores={job=1},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:firework_rocket", Count: 1b}]}] run item replace entity @s hotbar.2 from block -4961 71 -5025 container.2

#循环
schedule function ci:loop/game/job/1_crp/skill/3_ff 1t append
