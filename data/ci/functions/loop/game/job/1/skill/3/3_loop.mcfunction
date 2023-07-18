#传送
execute positioned as @e[tag=1_skill_3_spawn,scores={id=1..}] as @r[team=war,distance=..300] if score @s id = @e[distance=..2,limit=1] id unless entity @s[scores={1_skill_3_death_test=1..}] run tp @s ~ ~-1.5 ~

#检测team=peace击杀
execute as @e[tag=1_skill_3_spawn,scores={id=1..}] if score @r[team=peace] id = @s id run kill @s
scoreboard players reset @a 1_skill_3_death_test