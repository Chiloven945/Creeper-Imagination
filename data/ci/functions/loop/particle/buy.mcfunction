###购买###

#爱心
execute as @a[tag=buy_1] at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
execute as @a[tag=buy_1] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=buy_1]","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"购买了爱心粒子","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=buy_1] at @a run tag @s add own_1
execute as @a[tag=buy_1] at @a run scoreboard players remove @s powder 10
execute as @a[tag=buy_1] at @a run scoreboard players set @s particle 1
execute as @a[tag=buy_1] at @a run tag @s remove buy_1
    execute as @a[tag=shop_1,tag=!own_1,tag=!buy_1] if entity @s[scores={powder=10..}] at @a run tag @s add buy_1
    execute as @a[tag=shop_1,tag=own_1] run tag @s add choose_1
    execute as @a[tag=shop_1,tag=!own_1] unless entity @s[scores={powder=10..}] at @a run tag @s add refuse_1
    execute as @a[tag=shop_1] at @a run tag @s remove shop_1

#水滴
execute as @a[tag=buy_2] at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
execute as @a[tag=buy_2] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=buy_2]","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"购买了水滴粒子","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=buy_2] at @a run tag @s add own_2
execute as @a[tag=buy_2] at @a run scoreboard players remove @s powder 10
execute as @a[tag=buy_2] at @a run scoreboard players set @s particle 2
execute as @a[tag=buy_2] at @a run tag @s remove buy_2
    execute as @a[tag=shop_2,tag=!own_2,tag=!buy_2] if entity @s[scores={powder=10..}] at @a run tag @s add buy_2
    execute as @a[tag=shop_2,tag=own_2] run tag @s add choose_2
    execute as @a[tag=shop_2,tag=!own_2] unless entity @s[scores={powder=10..}] at @a run tag @s add refuse_2
    execute as @a[tag=shop_2] at @a run tag @s remove shop_2

#灵魂
execute as @a[tag=buy_3] at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
execute as @a[tag=buy_3] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=buy_3]","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"购买了灵魂粒子","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=buy_3] at @a run tag @s add own_3
execute as @a[tag=buy_3] at @a run scoreboard players remove @s powder 5
execute as @a[tag=buy_3] at @a run scoreboard players remove @s tnt 1
execute as @a[tag=buy_3] at @a run scoreboard players set @s particle 3
execute as @a[tag=buy_3] at @a run tag @s remove buy_3
    execute as @a[tag=shop_3,tag=!own_3,tag=!buy_3] if entity @s[scores={powder=5..,tnt=1..}] at @a run tag @s add buy_3
    execute as @a[tag=shop_3,tag=own_3] run tag @s add choose_3
    execute as @a[tag=shop_3,tag=!own_3] unless entity @s[scores={powder=5..,tnt=1..}] at @a run tag @s add refuse_3
    execute as @a[tag=shop_3] at @a run tag @s remove shop_3

#彩色药水
execute as @a[tag=buy_4] at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
execute as @a[tag=buy_4] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=buy_4]","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"购买了彩色药水粒子","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=buy_4] at @a run tag @s add own_4
execute as @a[tag=buy_4] at @a run scoreboard players remove @s powder 5
execute as @a[tag=buy_4] at @a run scoreboard players remove @s tnt 1
execute as @a[tag=buy_4] at @a run scoreboard players set @s particle 4
execute as @a[tag=buy_4] at @a run tag @s remove buy_4
    execute as @a[tag=shop_4,tag=!own_4,tag=!buy_4] if entity @s[scores={powder=5..,tnt=1..}] at @a run tag @s add buy_4
    execute as @a[tag=shop_4,tag=own_4] run tag @s add choose_4
    execute as @a[tag=shop_4,tag=!own_4] unless entity @s[scores={powder=5..,tnt=1..}] at @a run tag @s add refuse_4
    execute as @a[tag=shop_4] at @a run tag @s remove shop_4

#绿晶
execute as @a[tag=buy_5] at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
execute as @a[tag=buy_5] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=buy_5]","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"购买了绿晶粒子","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=buy_5] at @a run tag @s add own_5
execute as @a[tag=buy_5] at @a run scoreboard players remove @s powder 5
execute as @a[tag=buy_5] at @a run scoreboard players remove @s tnt 1
execute as @a[tag=buy_5] at @a run scoreboard players set @s particle 5
execute as @a[tag=buy_5] at @a run tag @s remove buy_5
    execute as @a[tag=shop_5,tag=!own_5,tag=!buy_5] if entity @s[scores={powder=5..,tnt=1..}] at @a run tag @s add buy_5
    execute as @a[tag=shop_5,tag=own_5] run tag @s add choose_5
    execute as @a[tag=shop_5,tag=!own_5] unless entity @s[scores={powder=5..,tnt=1..}] at @a run tag @s add refuse_5
    execute as @a[tag=shop_5] at @a run tag @s remove shop_5

#黑化心
execute as @a[tag=buy_6] at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
execute as @a[tag=buy_6] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=buy_6]","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"购买了黑化心粒子","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=buy_6] at @a run tag @s add own_6
execute as @a[tag=buy_6] at @a run scoreboard players remove @s powder 5
execute as @a[tag=buy_6] at @a run scoreboard players remove @s tnt 1
execute as @a[tag=buy_6] at @a run scoreboard players set @s particle 6
execute as @a[tag=buy_6] at @a run tag @s remove buy_6
    execute as @a[tag=shop_6,tag=!own_6,tag=!buy_6] if entity @s[scores={powder=6..,tnt=1..}] at @a run tag @s add buy_6
    execute as @a[tag=shop_6,tag=own_6] run tag @s add choose_6
    execute as @a[tag=shop_6,tag=!own_6] unless entity @s[scores={powder=5..,tnt=1..}] at @a run tag @s add refuse_6
    execute as @a[tag=shop_6] at @a run tag @s remove shop_6

#花粉
execute as @a[tag=buy_7] at @a run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 100 1
execute as @a[tag=buy_7] at @a run tellraw @a [{"text":"苦力怕的幻想","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"竞技场 ","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":">>> ","color":"white","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"selector":"@a[tag=buy_7]","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"购买了花粉粒子","color":"green","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
execute as @a[tag=buy_7] at @a run tag @s add own_7
execute as @a[tag=buy_7] at @a run scoreboard players remove @s powder 5
execute as @a[tag=buy_7] at @a run scoreboard players set @s particle 7
execute as @a[tag=buy_7] at @a run tag @s remove buy_7
    execute as @a[tag=shop_7,tag=!own_7,tag=!buy_7] if entity @s[scores={powder=5..}] at @a run tag @s add buy_7
    execute as @a[tag=shop_7,tag=own_7] run tag @s add choose_7
    execute as @a[tag=shop_7,tag=!own_7] unless entity @s[scores={powder=5..}] at @a run tag @s add refuse_7
    execute as @a[tag=shop_7] at @a run tag @s remove shop_7

#循环
schedule function ci:loop/particle/buy 1t append
