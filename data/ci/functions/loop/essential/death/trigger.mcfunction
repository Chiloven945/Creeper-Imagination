###复活###
tag @a[scores={death_test=1..}] add respawning
execute as @a[scores={death_test=1..}] run function ci:loop/essential/fresh/1
execute as @a[scores={death_test=1..}] run schedule function ci:loop/essential/fresh/2 1t append
scoreboard players reset @a[scores={death_test=1..}] death_test

schedule function ci:loop/essential/death/trigger 1t append