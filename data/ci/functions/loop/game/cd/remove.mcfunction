#移除标签
execute as @a[tag=1_skill_cding] unless entity @s[scores={cd_1=1..}] run tag @s remove 1_skill_cding
execute as @a[tag=2_skill_cding] unless entity @s[scores={cd_2=1..}] run tag @s remove 2_skill_cding
execute as @a[tag=3_skill_cding] unless entity @s[scores={cd_3=1..}] run tag @s remove 3_skill_cding
execute as @a[tag=10_skill_cding] unless entity @s[scores={cd_10=1..}] run tag @s remove 10_skill_cding
execute as @a[tag=11_skill_cding] unless entity @s[scores={cd_11=1..}] run tag @s remove 11_skill_cding
execute as @a[tag=12_skill_cding] unless entity @s[scores={cd_12=1..}] run tag @s remove 12_skill_cding

#循环
schedule function ci:loop/game/cd/remove 1t append
