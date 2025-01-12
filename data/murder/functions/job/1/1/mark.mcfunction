advancement revoke @s only murder:job/1/1/hurt_by_creeper
scoreboard players set @s murder_type 1001000
scoreboard players set @s murder_time_to_reset 600

execute as @e[tag=job_1_1_creeper_pos] at @e[tag=job_1_1] unless score @s sub_id = @e[sort=nearest,limit=1,tag=job_1_1_creeper_pos] sub_id run tag @s add job_1_1_damage_source



execute unless entity @e[tag=job_1_1] run tag @e[tag=job_1_1_creeper_pos] add job_1_1_damage_source


#炸到自己
execute if score @e[tag=job_1_1_damage_source,limit=1] id = @s id run scoreboard players set @s murder_type 1001020

#被队友炸的
execute if score @e[tag=job_1_1_damage_source,limit=1] team = @s team unless score @e[tag=job_1_1_damage_source,limit=1] id = @s id run scoreboard players set @s murder_type 1001010

#被其他队伍炸的
execute unless score @e[tag=job_1_1_damage_source,limit=1] team = @s team unless score @e[tag=job_1_1_damage_source,limit=1] id = @s id run scoreboard players operation @s murder_last_source = @e[tag=job_1_1_damage_source,limit=1] id

