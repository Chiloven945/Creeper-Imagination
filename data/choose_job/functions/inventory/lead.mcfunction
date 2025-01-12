execute if score $tool mode matches 0 as @a[scores={choose_job_page=1},tag=!ready_for_war] run function choose_job:inventory/lead_page_1
execute as @a[tag=!ready_for_war] if score $tool mode matches 0 run function choose_job:inventory/lead_page_0


execute as @a[tag=!ready_for_war] if score $tool mode matches 1 unless score $tool game_stage matches 1.. run function choose_job:inventory/lead_page_0_steal
execute if score $tool mode matches 1 as @a[scores={choose_job_page=-1}] unless score $tool game_stage matches 1.. run function choose_job:inventory/lead_page_-1

execute if score $tool mode matches 1 if score $tool game_stage matches 2 as @a[scores={choose_job_page=1},tag=!ready_for_war] run function choose_job:inventory/lead_page_1
#sche