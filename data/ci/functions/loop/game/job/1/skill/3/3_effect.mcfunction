#效果给予
execute as @s at @s unless block ~ ~-0.5 ~ air run scoreboard players reset @s 1_skill_3_effect_time
execute as @s at @s if block ~ ~-0.5 ~ air run effect give @s minecraft:levitation 1 255 true