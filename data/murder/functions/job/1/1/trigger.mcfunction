execute as @e[tag=job_1_1_creeper_pos] at @e[tag=job_1_1] unless score @s sub_id = @e[sort=nearest,limit=1,tag=job_1_1_creeper_pos] sub_id run tag @s add job_1_1_damage_source
execute unless entity @e[tag=job_1_1] run tag @e[tag=job_1_1_creeper_pos] add job_1_1_damage_source

execute at @e[tag=job_1_1_damage_source] as @a[advancements={murder:job/1/1/hurt_by_creeper=true},distance=..8] run function murder:job/1/1/mark
tag @e remove job_1_1_damage_source
#sche