#击杀
execute as @a[tag=trigger_kill+] at @s run title @s title [{"text":">>>","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" 击杀！","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=trigger_kill+] at @s run playsound minecraft:block.anvil.land player @s ~ ~ ~ 85 1 0.1
execute as @a[tag=trigger_kill+] at @s run scoreboard players add @s kill 1
execute as @a[tag=trigger_kill+] at @s run tag @s remove trigger_kill+

#循环
schedule function ci:loop/essential/death/show/kill 1t append
