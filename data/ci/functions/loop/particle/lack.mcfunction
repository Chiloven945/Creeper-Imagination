###不足以购买###

#爱心
execute as @a[tag=refuse_1] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 100 1
execute as @a[tag=refuse_1] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的火药不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=refuse_1] remove refuse_1

#水滴
execute as @a[tag=refuse_2] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 100 1
execute as @a[tag=refuse_2] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的火药不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=refuse_2] remove refuse_2

#灵魂
execute as @a[tag=refuse_3] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 100 1
execute as @a[tag=refuse_3] unless entity @s[scores={powder=5..}] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的火药不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=refuse_3] unless entity @s[scores={tnt=1..}] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的TNT不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=refuse_3] remove refuse_3

#彩色药水
execute as @a[tag=refuse_4] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 100 1
execute as @a[tag=refuse_4] unless entity @s[scores={powder=5..}] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的火药不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=refuse_4] unless entity @s[scores={tnt=1..}] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的TNT不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=refuse_4] remove refuse_4

#绿晶
execute as @a[tag=refuse_5] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 100 1
execute as @a[tag=refuse_5] unless entity @s[scores={powder=5..}] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的火药不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=refuse_5] unless entity @s[scores={tnt=1..}] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的TNT不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=refuse_5] remove refuse_5

#黑化心
execute as @a[tag=refuse_6] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 100 1
execute as @a[tag=refuse65] unless entity @s[scores={powder=5..}] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的火药不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=refuse_6] unless entity @s[scores={tnt=1..}] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的TNT不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=refuse_6] remove refuse_6

#花粉
execute as @a[tag=refuse_7] at @s run playsound minecraft:entity.villager.no player @s ~ ~ ~ 100 1
execute as @a[tag=refuse_7] run tellraw @s [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" >>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"你的火药不足","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tag @a[tag=refuse_7] remove refuse_7

#循环
schedule function ci:loop/particle/lack 1t append
