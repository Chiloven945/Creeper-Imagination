#刷新
scoreboard players reset @s job
effect give @s minecraft:saturation 114 1 true
effect clear @s
clear @s
scoreboard players reset @s cd_1
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:instant_health 1 255 true
tag @s remove 2_skill_cding
tag @s remove 3_skill_cding
scoreboard players reset @s cd_2
scoreboard players reset @s cd_3
scoreboard players reset @s cd_10
scoreboard players reset @s cd_11
scoreboard players reset @s cd_12
tag @s remove 10_skill_cding
tag @s remove 11_skill_cding
tag @s remove 12_skill_cding
scoreboard players reset @s 2_skill_3_aim_time
scoreboard players reset @s 1_skill_3_effect_time
scoreboard players reset @s 3_skill_10_particle_time
attribute @s minecraft:generic.attack_damage base set 1
scoreboard players reset @s damage
scoreboard players reset @s time_to_prepare

