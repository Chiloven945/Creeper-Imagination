
#3-原地,~
execute at @s positioned ^ ^ ^1.5 if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^1.5 if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe
#3-原地,~0.5
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^ ^ ^1.5 positioned ~ ~0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^ ^ ^1.5 positioned ~ ~0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe
#3-原地,~-0.5
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^ ^ ^1.5 positioned ~ ~-0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe

#3-原地0.5,~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^0.5 ^ ^1.5 positioned ~ ~ ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^0.5 ^ ^1.5 positioned ~ ~ ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe
#3-原地0.5,~0.5
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^0.5 ^ ^1.5 positioned ~ ~0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^0.5 ^ ^1.5 positioned ~ ~0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe
#3-原地0.5,~-0.5
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^0.5 ^ ^1.5 positioned ~ ~-0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^0.5 ^ ^1.5 positioned ~ ~-0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe

#3-原地-0.5,~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^-0.5 ^ ^1.5 positioned ~ ~ ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^-0.5 ^ ^1.5 positioned ~ ~ ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe
#3-原地-0.5,~0.5
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^-0.5 ^ ^1.5 positioned ~ ~0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^-0.5 ^ ^1.5 positioned ~ ~0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe
#3-原地-0.5,~0.5
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^-0.5 ^ ^1.5 positioned ~ ~-0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tp @s ~ ~ ~
execute if entity @s[tag=job_3_2_not_safe] at @s positioned ^-0.5 ^ ^1.5 positioned ~ ~-0.5 ~ if block ~ ~ ~ #job:2/3/safe if block ~ ~1 ~ #job:2/3/safe run tag @s remove job_3_2_not_safe

#
execute if entity @s[tag=job_3_2_not_safe] run function job:3_avenger/skill/2/check_1