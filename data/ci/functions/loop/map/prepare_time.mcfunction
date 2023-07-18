execute as @a[x=4986,dx=0,y=67.0,dy=3.0,z=4998.0,dz=3] run scoreboard players add @s time_to_prepare 1
execute as @a unless entity @s[x=4986,dx=0,y=67.0,dy=3.0,z=4998.0,dz=3] run scoreboard players reset @s time_to_prepare
execute as @a[scores={time_to_prepare=95..}] run function ci:loop/map/join_war
schedule function ci:loop/map/prepare_time 1t append