#tp回出生点
execute as @a[tag=btp] at @s run tp @s 5000 69 5000 facing 4999 69 5000
execute as @a[tag=btp] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 75 1
tag @a remove btp

#已在tick循环，无需schedule
