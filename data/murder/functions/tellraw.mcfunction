execute at @a[scores={team=1..4}] if score @s murder_last_source = @a[sort=nearest,limit=1] id run tag @a[sort=nearest,limit=1] add murderer


effect give @a[tag=murderer] regeneration 3 2 true
execute if entity @a[tag=murderer] if score $tool mode matches 0 run function minecraft:map/kill

scoreboard players add @a[tag=murderer] stats_kill 1
scoreboard players add @a[tag=murderer] continued_kill 1
scoreboard players set @a[tag=murderer] continued_kill_reset_time 1200
execute as @a[tag=murderer] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0
execute as @a[tag=murderer] at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 100 1
execute as @a[tag=murderer] at @s if score @a[tag=murderer,limit=1] continued_kill matches 2.. run playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 100 2
execute as @a[tag=murderer] at @s if score @a[tag=murderer,limit=1] continued_kill matches 4.. run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 100 1.5
execute as @a[tag=murderer] at @s if score @a[tag=murderer,limit=1] continued_kill matches 3.. run playsound minecraft:entity.player.breath player @s ~ ~ ~ 100 0
execute as @a[tag=murderer] at @s if score @a[tag=murderer,limit=1] continued_kill matches 6.. run playsound minecraft:entity.wither.ambient player @s ~ ~ ~ 100 0.2
execute as @a[tag=murderer] at @s if score @a[tag=murderer,limit=1] continued_kill matches 7.. run playsound minecraft:entity.wither.death player @s ~ ~ ~ 100 0
execute as @a[tag=murderer] at @s if score @a[tag=murderer,limit=1] continued_kill matches 9.. run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 100 1


scoreboard players add @s stats_death 1


execute if score @a[tag=murderer,limit=1] continued_kill matches 1 unless score @s continued_kill matches 3.. run data merge storage murder:tellraw {continued_kill:"一破",continued_kill_color:"yellow"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 1 if score @s continued_kill matches 3.. run data merge storage murder:tellraw {continued_kill:"终结",continued_kill_color:"aqua"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 2 run data merge storage murder:tellraw {continued_kill:"双连杀",continued_kill_color:"gold"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 3 run data merge storage murder:tellraw {continued_kill:"三连杀",continued_kill_color:"green"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 4 run data merge storage murder:tellraw {continued_kill:"四连破军",continued_kill_color:"red"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 5 run data merge storage murder:tellraw {continued_kill:"五连屠戮",continued_kill_color:"red"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 6 run data merge storage murder:tellraw {continued_kill:"六连造极",continued_kill_color:"dark_green"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 7 run data merge storage murder:tellraw {continued_kill:"七连造极",continued_kill_color:"dark_green"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 8 run data merge storage murder:tellraw {continued_kill:"八连史诗",continued_kill_color:"dark_aqua"}
execute if score @a[tag=murderer,limit=1] continued_kill matches 9.. run data merge storage murder:tellraw {continued_kill:"神迹在世",continued_kill_color:"dark_purple"}

execute unless entity @a[tag=murderer,limit=1] run data merge storage murder:tellraw {continued_kill:"自杀",continued_kill_color:"gray"}


#accident
execute if score @s murder_type matches 11000 run function murder:tellraw/accident/1 with storage murder:tellraw
execute if score @s murder_type matches 21000 run function murder:tellraw/accident/2 with storage murder:tellraw
execute if score @s murder_type matches 31000 run function murder:tellraw/accident/3 with storage murder:tellraw
execute if score @s murder_type matches 41000 run function murder:tellraw/accident/4 with storage murder:tellraw
execute if score @s murder_type matches 51000 run function murder:tellraw/accident/5 with storage murder:tellraw
execute if score @s murder_type matches 61000 run function murder:tellraw/accident/6 with storage murder:tellraw
#job-1
execute if score @s murder_type matches 1001000 run function murder:tellraw/job/1/1_0 with storage murder:tellraw
execute if score @s murder_type matches 1001010 run function murder:tellraw/job/1/1_1 with storage murder:tellraw
execute if score @s murder_type matches 1001020 run function murder:tellraw/job/1/1_2 with storage murder:tellraw
execute if score @s murder_type matches 1002000 run function murder:tellraw/job/1/2 with storage murder:tellraw
execute if score @s murder_type matches 1003000 run function murder:tellraw/job/1/3 with storage murder:tellraw
#job-2
execute if score @s murder_type matches 2001000 run function murder:tellraw/job/2/1 with storage murder:tellraw
execute if score @s murder_type matches 2002000 run function murder:tellraw/job/2/2 with storage murder:tellraw
#job-3
execute if score @s murder_type matches 3001100 run function murder:tellraw/job/3/1_normal with storage murder:tellraw
execute if score @s murder_type matches 3001200 run function murder:tellraw/job/3/1_strong with storage murder:tellraw
#job-4
execute if score @s murder_type matches 4001000 run function murder:tellraw/job/4/1 with storage murder:tellraw
execute if score @s murder_type matches 4002000 run function murder:tellraw/job/4/2 with storage murder:tellraw
#job-5
execute if score @s murder_type matches 5001000 run function murder:tellraw/job/5/1 with storage murder:tellraw
execute if score @s murder_type matches 5003000 run function murder:tellraw/job/5/3 with storage murder:tellraw




tag @a remove murderer
