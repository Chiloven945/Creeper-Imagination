#击杀
execute as @s at @s run title @s title [{"text":"\u00a7f>>> \u00a7l\u00a7e击杀！\u00a7f <<<"}]
execute as @s at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 85 1 0.1
execute as @s at @s run scoreboard players add @s kill 1
