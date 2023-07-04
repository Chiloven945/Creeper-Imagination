#刷新
item replace entity @a[tag=fresh] inventory.26 with minecraft:barrier
scoreboard players reset @a[tag=fresh] job
effect give @a[tag=fresh] minecraft:saturation 114 1 true
effect clear @a[tag=fresh]
clear @a[tag=fresh]
scoreboard players reset @a[tag=fresh] cd_1
attribute @a[tag=fresh,limit=1] minecraft:generic.max_health base set 20
effect give @a[tag=fresh] minecraft:instant_health 1 255 true
tag @a[tag=fresh] remove 2_skill_cding
tag @a[tag=fresh] remove 3_skill_cding
scoreboard players reset @a[tag=fresh] cd_2
scoreboard players reset @a[tag=fresh] cd_3
scoreboard players reset @a[tag=fresh] cd_10
scoreboard players reset @a[tag=fresh] cd_11
scoreboard players reset @a[tag=fresh] cd_12
tag @a[tag=fresh] remove 10_skill_cding
tag @a[tag=fresh] remove 11_skill_cding
tag @a[tag=fresh] remove 12_skill_cding
scoreboard players reset @a[tag=fresh] 2_skill_3_aim_time
scoreboard players reset @a[tag=fresh] 1_skill_3_effect_time
scoreboard players reset @a[tag=fresh] 3_skill_10_particle_time
attribute @a[tag=fresh,limit=1] minecraft:generic.attack_damage base set 1
scoreboard players reset @a[tag=fresh] respawn_time
scoreboard players reset @a[tag=fresh] damage
tag @a[tag=fresh] remove fresh

#已在tick循环，无需schedule
