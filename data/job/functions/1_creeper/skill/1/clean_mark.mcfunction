execute as @e[tag=job_1_1_creeper_pos] at @e[tag=job_1_1] unless score @s sub_id = @e[sort=nearest,limit=1,tag=job_1_1] sub_id run kill @s
execute as @e[tag=job_1_1_creeper_pos] unless entity @e[tag=job_1_1] run kill @s

#sche-
