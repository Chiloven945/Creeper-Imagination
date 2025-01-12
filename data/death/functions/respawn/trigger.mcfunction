scoreboard players reset @s death_trigger
function murder:tellraw
function death:reset
effect give @s saturation infinite 0 true
effect give @s invisibility 10 0 true
execute if score $tool mode matches 1 run function death:respawn/mode_steal
execute if score $tool mode matches 0 run function death:respawn/mode_war
execute at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 100 1.5