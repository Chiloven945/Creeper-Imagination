execute as @s unless entity @s[scores={job_choose=1..}] run function ci:loop/game/join/check
execute as @s[scores={job_choose=1}] run function ci:loop/game/job/1/join
execute as @s[scores={job_choose=2}] run function ci:loop/game/job/2/join
execute as @s[scores={job_choose=3}] run function ci:loop/game/job/3/join
execute as @s[scores={job_choose=4}] run function ci:loop/game/job/4/join