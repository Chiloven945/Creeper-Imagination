scoreboard players remove $tool choose_job_time 1
execute store result bossbar ci:choose_job value run scoreboard players get $tool choose_job_time
bossbar set ci:choose_job players @a
execute if score $tool choose_job_time matches 0 run function steal:module/choose_job/end
#sche-s