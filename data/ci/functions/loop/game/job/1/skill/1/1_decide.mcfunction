###苦力怕技能1###

#判定距离
execute as @a[scores={job=1},nbt={SelectedItem: {id: "minecraft:creeper_spawn_egg"}}] at @s rotated as @s anchored eyes if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air if block ^ ^ ^4 air if block ^ ^ ^5 air run scoreboard players set @s 1_skill_1_distance 5
execute as @a[scores={job=1},nbt={SelectedItem: {id: "minecraft:creeper_spawn_egg"}}] at @s rotated as @s anchored eyes if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air if block ^ ^ ^4 air unless block ^ ^ ^5 air run scoreboard players set @s 1_skill_1_distance 4
execute as @a[scores={job=1},nbt={SelectedItem: {id: "minecraft:creeper_spawn_egg"}}] at @s rotated as @s anchored eyes if block ^ ^ ^1 air if block ^ ^ ^2 air if block ^ ^ ^3 air unless block ^ ^ ^4 air run scoreboard players set @s 1_skill_1_distance 3
execute as @a[scores={job=1},nbt={SelectedItem: {id: "minecraft:creeper_spawn_egg"}}] at @s rotated as @s anchored eyes if block ^ ^ ^1 air if block ^ ^ ^2 air unless block ^ ^ ^3 air run scoreboard players set @s 1_skill_1_distance 2
execute as @a[scores={job=1},nbt={SelectedItem: {id: "minecraft:creeper_spawn_egg"}}] at @s rotated as @s anchored eyes if block ^ ^ ^1 air unless block ^ ^ ^2 air run scoreboard players set @s 1_skill_1_distance 1
execute as @a[scores={job=1},nbt={SelectedItem: {id: "minecraft:creeper_spawn_egg"}}] at @s rotated as @s anchored eyes unless block ^ ^ ^1 air run scoreboard players set @s 1_skill_1_distance 0

function ci:loop/game/job/1/skill/1/1_particle













#苦力怕击杀
execute as @e[type=creeper,tag=1_skill_1_spawn] run scoreboard players add @s 1_skill_1_time 1

execute as @e[tag=1_skill_1_spawn,scores={1_skill_1_time=19..}] at @s run scoreboard players operation @a[distance=..8] killed_by_creeper_id = @s id
    
execute as @a[scores={killed_by_creeper=1..}] at @r[scores={killed_by_creeper=0}] if score @p id = @s killed_by_creeper_id run tag @p add trigger_kill

execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..}] run tellraw @a [{"text":"击杀","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"被","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=trigger_kill]","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"炸得大败而归！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute as @a[tag=trigger_kill] run tag @s add trigger_kill+

execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..}] run scoreboard players set @s killed_by_creeper 0

execute as @a[tag=trigger_kill] run tag @a remove trigger_kill

execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..}] at @s if score @s id = @s killed_by_creeper_id run tag @p add trigger_suicide

execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..},tag=trigger_suicide] run tellraw @a [{"text":"击杀","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"把自己炸得满面尘灰！","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
    
execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..},tag=trigger_suicide] run tag @s add trigger_suicide+
    
execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..},tag=trigger_suicide] run scoreboard players set @s killed_by_creeper 0
    
execute as @a[tag=trigger_suicide] run tag @a remove trigger_suicide



