#1加入

scoreboard players set @s job 1
execute as @s at @s run function ci:loop/map/randomtp/tpmap_decide
attribute @s minecraft:generic.max_health base set 16
execute as @s at @s run summon minecraft:armor_stand ~ ~10 ~ {Tags: ["1_skill_10_detect"], CustomNameVisible: 0b, NoAI: 1b, Invulnerable: 1b, Silent: 1b, NoGravity: 1b, Invisible: 1}
execute as @e[tag=1_skill_10_detect] unless entity @s[scores={id=1..}] run scoreboard players operation @s id = @a[scores={time_to_prepare=95..,job=1}] id
team join war @s
scoreboard players reset @s time_to_prepare

