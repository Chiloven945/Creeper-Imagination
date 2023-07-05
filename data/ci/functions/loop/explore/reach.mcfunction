###到达###

#画后拐角处
execute as @a[tag=explore_1] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"抵达了探索点【画后拐角处】","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_1] at @s run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"奖励1火药","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_1] at @s run scoreboard players add @s powder 1
execute as @a[tag=explore_1] at @s run playsound minecraft:entity.player.levelup player @a[distance=..15] ~ ~ ~ 100 1
execute as @a[tag=explore_1] at @s run tag @s add explored_1
execute as @a[tag=explore_1] at @s run tag @s remove explore_1

#阁楼无灯处
execute as @a[tag=explore_2] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"抵达了探索点【阁楼无灯处】","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_2] at @s run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"奖励3火药","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_2] at @s run scoreboard players add @s powder 3
execute as @a[tag=explore_2] as @a at @a run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100 1
execute as @a[tag=explore_2] at @s run tag @s add explored_2
execute as @a[tag=explore_2] at @s run tag @s remove explore_2

#水道通向处
execute as @a[tag=explore_3] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"抵达了探索点【水道通向处】","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_3] at @s run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"奖励1TNT","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_3] at @s run scoreboard players add @s tnt 1
execute as @a[tag=explore_3] as @a at @a run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100 1
execute as @a[tag=explore_3] at @s run tag @s add explored_3
execute as @a[tag=explore_3] at @s run tag @s remove explore_3

#女巫藏身处
execute as @a[tag=explore_4] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"抵达了探索点【女巫藏身处】","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_4] at @s run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"奖励2火药","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_4] at @s run scoreboard players add @s powder 2
execute as @a[tag=explore_4] as @a at @a run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100 1
execute as @a[tag=explore_4] at @s run tag @s add explored_4
execute as @a[tag=explore_4] at @s run tag @s remove explore_4

#深藏封印处
execute as @a[tag=explore_5] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@s","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"抵达了探索点【深藏封印处】","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_5] at @s run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"奖励4火药","color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=explore_5] at @s run scoreboard players add @s powder 4
execute as @a[tag=explore_5] as @a at @a run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100 1
execute as @a[tag=explore_5] at @s run tag @s add explored_5
execute as @a[tag=explore_5] at @s run tag @s remove explore_5

#循环
schedule function ci:loop/explore/reach 1t append
