###苦力怕技能2###

#技能触发
scoreboard players set @s cd_2 60
item replace entity @s hotbar.1 with minecraft:yellow_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray"}]'}} 1
tag @s add 2_skill_cding
clear @s minecraft:crossbow
execute as @s at @s run playsound minecraft:item.firecharge.use player @a[distance=..15] ~ ~ ~ 90 0.5 0.1
execute as @s at @s run particle minecraft:effect ~ ~0.5 ~ 0.35 0.05 0.35 0.1 10 force @a[distance=..15,tag=!no_particle]



