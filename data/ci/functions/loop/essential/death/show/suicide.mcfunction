#自杀
execute as @a[tag=trigger_suicide+,tag=respawning] at @s run title @s title [{"text":">>>","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 自杀......","color":"gray","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=trigger_suicide+,tag=respawning] at @s run playsound minecraft:entity.pig.death player @s ~ ~ ~ 85 1 0.1
execute as @a[tag=trigger_suicide+,tag=respawning] at @s run scoreboard players add @s suicide 1
execute as @a[tag=trigger_suicide+,tag=respawning] at @s run tag @s remove trigger_suicide+

#循环
schedule function ci:loop/essential/death/show/suicide 1t append
