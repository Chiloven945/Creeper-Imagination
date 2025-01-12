scoreboard players add @a[scores={job_4_2_time=0..}] job_4_2_time_t 1
execute as @a[scores={job_4_2_time_t=12}] run function job:4_blood_race/skill/2/laser

execute as @a[scores={job_4_2_time=1..},nbt=!{SelectedItem:{components: {"minecraft:item_name": '{"color":"white","italic":false,"text":"吸血魔珠"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 持续向前方发射激光"}', '{"color":"gray","italic":false,"text":"✎ 每次命中造成伤害，并为你提供临时血量"}', '{"color":"gray","extra":[{"color":"white","italic":false,"text":"右键"},{"color":"gray","italic":false,"text":"使用"}],"italic":false,"text":"❃ "}', '{"color":"gray","extra":[{"color":"white","italic":false,"text":"13"},{"color":"gray","italic":false,"text":" 秒冷却"}],"italic":false,"text":"❃ "}'], "minecraft:enchantments": {show_in_tooltip: 0b, levels: {"minecraft:unbreaking": 1}}}, count: 1, id: "minecraft:magma_cream"}}] run function job:4_blood_race/skill/2/final

execute as @e[tag=job_4_2_marker] run function job:4_blood_race/skill/2/move
scoreboard players remove @a[scores={job_4_2_heart_time=0..}] job_4_2_heart_time 1
execute as @a[scores={job_4_2_heart_time=..0}] run function job:4_blood_race/skill/2/heart
execute as @a[scores={job_4_2_reset_time=0..}] run function job:4_blood_race/skill/2/reset_heart
#sche-