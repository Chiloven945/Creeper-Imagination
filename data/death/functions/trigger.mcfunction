
execute as @a[scores={death_trigger=1..,team=1..4}] run function death:respawn/trigger

execute as @a[scores={death_trigger=1..,team=0}] run scoreboard players reset @s death_trigger
#sche