tag @s remove ready_for_war
effect clear @s
effect give @s saturation infinite 0 true
clear @s
scoreboard players reset @s murder_time_to_reset
scoreboard players reset @s murder_last_source
scoreboard players reset @s murder_type
scoreboard players reset @s continued_kill_reset_time
scoreboard players reset @s continued_kill

scoreboard players set @s cd_1 0
scoreboard players set @s cd_2 0
scoreboard players set @s cd_3 0
scoreboard players set @s cd_4 0
scoreboard players set @s cd_5 0
scoreboard players set @s cd_6 0
scoreboard players set @s cd_7 0
scoreboard players set @s cd_8 0
scoreboard players set @s cd_9 0
scoreboard players set @s cd_1_t 0
scoreboard players set @s cd_2_t 0
scoreboard players set @s cd_3_t 0
scoreboard players set @s cd_4_t 0
scoreboard players set @s cd_5_t 0
scoreboard players set @s cd_6_t 0
scoreboard players set @s cd_7_t 0
scoreboard players set @s cd_8_t 0
scoreboard players set @s cd_9_t 0

scoreboard players reset @s job_2_2_time_t
scoreboard players reset @s job_2_2_time

scoreboard players reset @s job_3_2_time

scoreboard players reset @s job_4_2_time
scoreboard players reset @s job_4_2_x
scoreboard players reset @s job_4_2_time_t
scoreboard players reset @s job_4_2_heart_time
scoreboard players reset @s job_4_2_reset_time
scoreboard players reset @s job_4_3_time

scoreboard players reset @s job_5_2_time
scoreboard players reset @s job_5_3_last_target
scoreboard players reset @s job_5_3_from

execute as @a at @s if score @p job_5_3_last_target = @s id run scoreboard players reset @s job_5_3_last_target

xp add @s -1000 levels
xp add @s -1000 points

attribute @s generic.max_absorption base set 0
attribute @s generic.knockback_resistance base set 0

advancement revoke @s only murder:accident/2_direct_hit_source