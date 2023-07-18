execute as @a[scores={1_skill_3_effect_time=1..200}] run function ci:loop/game/job/1/skill/3/3_effect
execute as @a[scores={1_skill_3_effect_time=1..}] run effect give @s slow_falling 1 0 true
scoreboard players remove @a[scores={1_skill_3_effect_time=1..}] 1_skill_3_effect_time 1

schedule function ci:loop/game/job/1/skill/3/3_effect_trigger 1t append