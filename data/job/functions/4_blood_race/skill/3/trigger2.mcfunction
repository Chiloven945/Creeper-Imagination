execute at @s run playsound minecraft:entity.phantom.flap player @a[distance=..15] ~ ~ ~ 100 1.6
scoreboard players set @s cd_3 9
scoreboard players set @s cd_3_t 20
effect give @s levitation 2 49 true
scoreboard players set @s job_4_3_time 5

function regeneration:stop