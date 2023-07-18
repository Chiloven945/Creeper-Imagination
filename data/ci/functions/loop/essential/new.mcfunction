tp @s 5000 69 5000 facing 4999 69 5000
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0.1 1 normal @a
execute at @a run playsound entity.firework_rocket.large_blast player @a ~ ~ ~ 100 1
scoreboard players set @s score 5000