#无职业job_choose设置为0
execute as @a unless entity @s[scores={job_choose=0..}] run scoreboard players set @s job_choose 0

#火药、tnt不存在设置为0
execute as @a unless entity @s[scores={powder=0..}] run scoreboard players set @s powder 0
execute as @a unless entity @s[scores={tnt=0..}] run scoreboard players set @s tnt 0

#循环
schedule function ci:loop/essential/set_0 1s append
