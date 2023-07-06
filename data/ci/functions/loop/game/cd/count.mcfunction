#减少
scoreboard players remove @a[scores={cd_1=1..}] cd_1 1
scoreboard players remove @a[scores={cd_2=1..}] cd_2 1
scoreboard players remove @a[scores={cd_3=1..}] cd_3 1
scoreboard players remove @a[scores={cd_10=1..}] cd_10 1
scoreboard players remove @a[scores={cd_11=1..}] cd_11 1
scoreboard players remove @a[scores={cd_12=1..}] cd_12 1

#循环
schedule function ci:loop/game/cd/count 1s append
