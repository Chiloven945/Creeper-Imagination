execute at @s run playsound minecraft:entity.phantom.bite player @a[distance=..15] ~ ~ ~ 100 0.8
scoreboard players set @s cd_3 9
scoreboard players set @s cd_3_t 20
effect give @s speed 2 9 true
scoreboard players set @s job_4_3_time 10

function regeneration:stop