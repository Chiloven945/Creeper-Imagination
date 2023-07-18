

#计算时间
execute as @a[tag=respawning,tag=!option_join_war] run scoreboard players add @s respawn_time 1

#1
execute as @a run playsound minecraft:entity.guardian.attack player @a[limit=1,scores={respawn_time=1}] ~ ~ ~ 80 0.1

#2
execute as @a run attribute @a[limit=1,scores={respawn_time=1}] minecraft:generic.max_health base set 2
execute as @a[limit=1,scores={respawn_time=1}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#20
execute as @a run attribute @a[limit=1,scores={respawn_time=4}] minecraft:generic.max_health base set 4
execute as @a[limit=1,scores={respawn_time=4}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#40
execute as @a run attribute @a[limit=1,scores={respawn_time=8}] minecraft:generic.max_health base set 6
execute as @a[limit=1,scores={respawn_time=8}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#60
execute as @a run attribute @a[limit=1,scores={respawn_time=12}] minecraft:generic.max_health base set 8
execute as @a[limit=1,scores={respawn_time=12}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#80
execute as @a run attribute @a[limit=1,scores={respawn_time=16}] minecraft:generic.max_health base set 10
execute as @a[limit=1,scores={respawn_time=16}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#100
execute as @a run attribute @a[limit=1,scores={respawn_time=20}] minecraft:generic.max_health base set 12
execute as @a[limit=1,scores={respawn_time=20}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#120
execute as @a run attribute @a[limit=1,scores={respawn_time=24}] minecraft:generic.max_health base set 14
execute as @a[limit=1,scores={respawn_time=24}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#140
execute as @a run attribute @a[limit=1,scores={respawn_time=28}] minecraft:generic.max_health base set 16
execute as @a[limit=1,scores={respawn_time=28}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#160
execute as @a run attribute @a[limit=1,scores={respawn_time=32}] minecraft:generic.max_health base set 18
execute as @a[limit=1,scores={respawn_time=32}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#180
execute as @a run attribute @a[limit=1,scores={respawn_time=36}] minecraft:generic.max_health base set 20
execute as @a[limit=1,scores={respawn_time=36}] at @s run playsound minecraft:entity.player.attack.strong player @s ~ ~ ~ 80 0.1

#200
execute as @a[scores={respawn_time=40}] run function ci:loop/map/join_war
execute as @a[scores={respawn_time=40}] run tag @s remove respawning
execute as @a[scores={respawn_time=40}] run scoreboard players set @s respawn_time -1

#循环
schedule function ci:loop/essential/death/respawn 5t append 
