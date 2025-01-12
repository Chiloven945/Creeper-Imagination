execute at @s run playsound minecraft:ui.button.click player @s ~ ~ ~ 100 1
$scoreboard players set @s team_choose $(team_choose)
execute if score $tool mode matches 1 run scoreboard players set @a[scores={team_choose=3..4}] team_choose 0
