###苦力怕技能3###




#技能触发

scoreboard players set @s cd_3 200
tag @s add 3_skill_cding
clear @s minecraft:firework_rocket

#技能内容
execute at @s run summon minecraft:firework_rocket ~ ~1.5 ~ {CustomName: '[{"text":"升天烟花","color":"dark_green"}]', Tags: ["1_skill_3_spawn"], CustomNameVisible: 0b, Glowing: 1b,  FireworksItem: {tag: {Fireworks: {Flight: 1, Explosions: [{Trail: 1b, Flicker: 1b, Type: 3, Colors: [I; 1092096], FadeColors: [I; 327593]}]}}, id: "minecraft:firework_rocket", Count: 1}, Life: 0, LifeTime: 30}
scoreboard players set @s 1_skill_3_effect_time 250
execute as @e[tag=1_skill_3_spawn] unless entity @s[scores={id=1..}] run scoreboard players operation @s id = @a[scores={1_skill_3_effect_time=250}] id
effect give @s minecraft:levitation 1 255 true
effect give @s minecraft:slow_falling 1 0 true


