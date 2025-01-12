tag @s remove shop_choose_4

scoreboard players set @s particle_choose 4
tellraw @s [{ "text": "成功选择了 ","color": "green"},{"text": "白色药水粒子","color": "white","underlined": true}]
execute at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 100 2