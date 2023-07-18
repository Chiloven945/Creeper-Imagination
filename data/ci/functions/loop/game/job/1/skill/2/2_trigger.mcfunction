execute as @a[scores={1_skill_2_test=1..,job=1}] run function ci:loop/game/job/1/skill/2/2_start
schedule function ci:loop/game/job/1/skill/2/2_trigger 1t
scoreboard players reset @a 1_skill_2_test