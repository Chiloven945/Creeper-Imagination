###召唤###

#爱心
execute at @a[scores={particle=1},tag=trigger_particle] run particle minecraft:heart ~ ~1.9 ~ 0.2 0 0.2 0.002 1 force @a[distance=..15]
execute at @a[scores={particle=1},tag=trigger_particle] run tag @a[scores={particle=1}] remove trigger_particle

#水滴
execute at @a[scores={particle=2},tag=trigger_particle] run particle minecraft:dripping_water ~ ~1.9 ~ 0.2 0 0.2 0.4 4 force @a[distance=..15]
execute at @a[scores={particle=2},tag=trigger_particle] run tag @a[scores={particle=2}] remove trigger_particle

#灵魂
execute at @a[scores={particle=3},tag=trigger_particle] run particle minecraft:soul ~ ~0.4 ~ 0.3 0 0.3 0.05 4 force @a[distance=..15]
execute at @a[scores={particle=3},tag=trigger_particle] run particle minecraft:soul_fire_flame ~ ~0.2 ~ 0.3 0 0.3 0.05 3 force @a[distance=..15]
execute at @a[scores={particle=3},tag=trigger_particle] run tag @a[scores={particle=3}] remove trigger_particle

#彩色药水
execute at @a[scores={particle=4},tag=trigger_particle] run particle minecraft:ambient_entity_effect ~ ~ ~ 0.1 0 0.1 0.4 5 force @a[distance=..15]
execute at @a[scores={particle=4},tag=trigger_particle] run tag @a[scores={particle=4}] remove trigger_particle

#绿晶
execute at @a[scores={particle=5},tag=trigger_particle] run particle minecraft:composter ~ ~0.2 ~ 0.2 0.02 0.2 0.001 5 force @a[distance=..15]
execute at @a[scores={particle=5},tag=trigger_particle] run particle minecraft:glow ~ ~0.2 ~ 0.2 0.02 0.2 0.001 5 force @a[distance=..15]
execute at @a[scores={particle=5},tag=trigger_particle] run tag @a[scores={particle=5}] remove trigger_particle

#黑化心
execute at @a[scores={particle=6},tag=trigger_particle] run particle minecraft:dust 0 0 0 1 ~ ~0.05 ~ 0.35 0.1 0.35 0.01 10 force @a[distance=..15]
execute at @a[scores={particle=6},tag=trigger_particle] run particle minecraft:damage_indicator ~ ~0.1 ~ 0.5 0.4 0.5 0.001 2 force @a[distance=..15]
execute at @a[scores={particle=6},tag=trigger_particle] run tag @a[scores={particle=6}] remove trigger_particle

#花粉
execute at @a[scores={particle=7},tag=trigger_particle] run particle minecraft:spore_blossom_air ~ ~2 ~ 0 0 0 0.0001 1 normal @a[distance=..15]
execute at @a[scores={particle=7},tag=trigger_particle] run tag @a[scores={particle=7}] remove trigger_particle

#循环
schedule function ci:loop/particle/do 1t append
