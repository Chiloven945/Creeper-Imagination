scoreboard players set @s cd_1 3
scoreboard players set @s cd_1_t 10
execute as @s[scores={cd_9=1..}] run function job:2_moison/skill/1/shoot_arrow
execute as @s unless entity @s[scores={cd_9=1..}] run function job:2_moison/skill/1/shoot_spectral
function regeneration:stop