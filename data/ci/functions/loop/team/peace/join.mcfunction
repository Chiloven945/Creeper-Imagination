#加入peace(这个是为了节省空间写一起，实际上是三个循环命令方块)
execute as @a unless entity @s[scores={job=1..}] run team join peace @s

execute as @a unless entity @s[scores={hunger=20..}] run effect give @s minecraft:saturation 1 0 true

effect give @a[team=peace] minecraft:resistance 1 255 true

#循环
schedule function ci:loop/team/peace/join 1t append
