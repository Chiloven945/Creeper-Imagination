###复活###

#计算时间
execute positioned 8 1 8 as @a[distance=..50,tag=respawning,tag=!option_join_war] run scoreboard players add @s respawn_time 1

#1
execute positioned 8 1 8 as @a[distance=..50] run playsound minecraft:entity.guardian.attack player @a[distance=..50,limit=1,scores={respawn_time=1}] ~ ~ ~ 80 0.1

#2
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=2}] minecraft:generic.max_health base set 2
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=2}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#20
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=20}] minecraft:generic.max_health base set 4
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=20}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#40
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=40}] minecraft:generic.max_health base set 6
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=40}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#60
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=60}] minecraft:generic.max_health base set 8
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=60}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#80
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=80}] minecraft:generic.max_health base set 10
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=80}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#100
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=100}] minecraft:generic.max_health base set 12
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=100}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#120
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=120}] minecraft:generic.max_health base set 14
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=120}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#140
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=140}] minecraft:generic.max_health base set 16
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=140}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#160
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=160}] minecraft:generic.max_health base set 18
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=160}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#180
execute positioned 8 1 8 as @a[distance=..50] run attribute @a[distance=..50,limit=1,scores={respawn_time=180}] minecraft:generic.max_health base set 20
execute positioned 8 1 8 as @a[distance=..50,limit=1,scores={respawn_time=180}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#200
execute positioned 8 1 8 as @a[distance=..50,scores={respawn_time=200}] run tag @s add option_join_war
execute positioned 8 1 8 as @a[distance=..50,scores={respawn_time=200}] run tag @s remove respawning
execute positioned 8 1 8 as @a[distance=..50,scores={respawn_time=200}] run scoreboard players set @s respawn_time -1

#循环
schedule function ci:loop/essential/death/respawn 1t append 
