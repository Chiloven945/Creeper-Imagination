#自杀
execute as @s at @s run title @s title [{"text":"\u00a77自杀……"}]
execute as @s at @s run playsound minecraft:entity.pig.death player @s ~ ~ ~ 85 1 0.1
execute as @s at @s run scoreboard players add @s suicide 1



