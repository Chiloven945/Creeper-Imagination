scoreboard players set $tool change_map_time 0

execute store result score $temp map_now run random value 1..5
execute if score $tool map_now = $temp map_now run scoreboard players add $temp map_now 1
scoreboard players operation $tool map_now = $temp map_now
execute if score $tool map_now matches 6.. run scoreboard players set $tool map_now 1


execute if score $tool map_now matches 1 run function minecraft:map/set/1
execute if score $tool map_now matches 2 run function minecraft:map/set/2
execute if score $tool map_now matches 3 run function minecraft:map/set/3
execute if score $tool map_now matches 4 run function minecraft:map/set/4
execute if score $tool map_now matches 5 run function minecraft:map/set/5



scoreboard players reset $tool change_map_time
team join lobby @a
tp @a[scores={team=1..4},tag=ready_for_war] 5000 68 5000 90 15
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 0.5 1
execute as @a run function death:reset
function job:0_common/entity_reset
scoreboard players set @a team 0

scoreboard players set $tool map_pos 5000
scoreboard players operation $tool map_pos *= $tool map_now
scoreboard players add $tool map_pos 10000

scoreboard players operation $map_load_x map_pos = $tool map_pos
scoreboard players operation $map_load_z map_pos = $tool map_pos

execute store result storage minecraft:map pos_2_x double 1.0 run scoreboard players get $map_load_x map_pos
execute store result storage minecraft:map pos_2_z double 1.0 run scoreboard players get $map_load_z map_pos

scoreboard players remove $map_load_x map_pos 100
execute store result storage minecraft:map pos_1_x double 1.0 run scoreboard players get $map_load_x map_pos
scoreboard players remove $map_load_z map_pos 100
execute store result storage minecraft:map pos_1_z double 1.0 run scoreboard players get $map_load_z map_pos

forceload remove all
function minecraft:initial/forceload

function minecraft:map/forceload_1 with storage minecraft:map
execute as @a[scores={death_spawn_time=1..}] run function death:respawn/exit/trigger
effect give @a instant_health 1 10 true
execute as @a at @s run playsound minecraft:block.end_portal.spawn player @s ~ ~ ~ 100 0.3
execute as @a at @s run playsound minecraft:block.end_gateway.spawn player @s ~ ~ ~ 100 0
tellraw @a [{"text": ""}]
tellraw @a [{"text": "☄ ","color": "gold"},{"text": "已切换地图","color": "white"}]