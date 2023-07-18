###魔艺被动###

#技能内容
execute as @a[tag=3_skill_10_start] at @s run playsound minecraft:entity.glow_squid.hurt player @a[distance=..15] ~ ~ ~ 85 1 0.1
    execute as @a[tag=3_skill_10_start] at @s run scoreboard players set @a[distance=0.00000000000000001..10] 3_skill_10_particle_time 100
    tag @a remove 3_skill_10_start

#技能触发
tag @a[scores={HP=..5,job=3},tag=!fresh,tag=!10_skill_cding] add 3_skill_10_start
    scoreboard players set @a[scores={HP=..5,job=3},tag=!fresh] cd_10 400
    item replace entity @a[scores={job=3,HP=..5},tag=!fresh] inventory.0 with minecraft:blue_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}} 1
    tag @a[scores={job=3,HP=..5},tag=!fresh] add 10_skill_cding
    clear @a[scores={job=3,HP=..5},tag=!fresh] minecraft:glow_ink_sac

#黑乎乎
execute as @a[scores={3_skill_10_particle_time=1..}] at @s anchored eyes rotated as @s run particle minecraft:dust 0 0 0 7 ^ ^ ^1 0.1 0.1 0.1 1 1 force @s
    execute as @a[scores={3_skill_10_particle_time=1..}] at @s anchored eyes rotated as @s run particle minecraft:dust 0 0 0 7 ^ ^ ^0.1 0.1 0.1 0.1 1 1 force @s
    execute as @a[scores={3_skill_10_particle_time=1..}] at @s anchored eyes rotated as @s run particle minecraft:dust 0 0 0 7 ^ ^ ^0.1 0.1 0.1 0.1 1 1 force @s
    execute as @a[scores={3_skill_10_particle_time=1..}] at @s anchored eyes rotated as @s run particle minecraft:dust 0 0 0 7 ^ ^1 ^0.1 0.1 0.1 0.1 1 1 force @s
    execute as @a[scores={3_skill_10_particle_time=1..}] at @s anchored eyes rotated as @s run particle minecraft:dust 0 0 0 7 ^ ^ ^-1 0.1 0.1 0.1 1 1 force @s
    execute as @a[scores={3_skill_10_particle_time=1..}] at @s anchored eyes rotated as @s run particle minecraft:dust 0 0 0 7 ^-1 ^ ^0.1 0.1 0.1 0.1 1 1 force @s
    execute as @a[scores={3_skill_10_particle_time=1..}] at @s anchored eyes rotated as @s run particle minecraft:dust 0 0 0 7 ^1 ^ ^0.1 0.1 0.1 0.1 1 1 force @s
    execute as @a[scores={3_skill_10_particle_time=1..}] at @s anchored eyes rotated as @s run particle minecraft:dust 0 0 0 7 ^ ^-2 ^0.1 0.1 0.1 0.1 1 1 force @s
    scoreboard players remove @a[scores={3_skill_10_particle_time=1..}] 3_skill_10_particle_time 1



#循环
schedule function ci:loop/game/job/3/skill/p1 1t append
