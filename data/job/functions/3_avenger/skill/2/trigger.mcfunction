scoreboard players set @s cd_2 10
scoreboard players set @s cd_2_t 20
clear @s blaze_powder
execute as @s run function job:3_avenger/skill/2/check_3
execute at @s run playsound minecraft:entity.shulker.teleport player @a[distance=..15] ~ ~ ~ 10 0

function regeneration:stop