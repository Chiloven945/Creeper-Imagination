#把@s之前选择的职业改回无附魔
execute if score @s job_choose matches 1 if score @s choose_job_page matches 1 run function choose_job:inventory/1a
execute if score @s job_choose matches 2 if score @s choose_job_page matches 1 run function choose_job:inventory/2a
execute if score @s job_choose matches 3 if score @s choose_job_page matches 1 run function choose_job:inventory/3a
execute if score @s job_choose matches 4 if score @s choose_job_page matches 1 run function choose_job:inventory/4a
#同步此人新的职业选择
$scoreboard players set @s job_choose $(job_index)
execute as @s at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 100 1
$function choose_job:inventory/$(job_index)b



