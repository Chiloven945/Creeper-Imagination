
execute store result score $murder_random murder_random run random value 1..3

$execute if entity @a[tag=murderer] if score $murder_random murder_random matches 1 run tellraw @a [{"text": "$(continued_kill) ➷ ","color": "$(continued_kill_color)"},{"selector":"@s"},{"text": " 被 ","color": "white"},{"selector":"@a[tag=murderer,limit=1]"},{"text":" 的烟花轰炸炸死了","color": "white"}]

$execute if entity @a[tag=murderer] if score $murder_random murder_random matches 2 run tellraw @a [{"text": "$(continued_kill) ➷ ","color": "$(continued_kill_color)"},{"selector":"@s"},{"text": " 在 ","color": "white"},{"selector":"@a[tag=murderer,limit=1]"},{"text":" 的烟花轰炸中死了","color": "white"}]

$execute if entity @a[tag=murderer] if score $murder_random murder_random matches 3 run tellraw @a [{"text": "$(continued_kill) ➷ ","color": "$(continued_kill_color)"},{"selector":"@s"},{"text": " 在 ","color": "white"},{"selector":"@a[tag=murderer,limit=1]"},{"text":" 的烟花轰炸里成为了粉末","color": "white"}]


execute unless entity @a[tag=murderer] store result score $murder_random murder_random run random value 1..3

execute unless entity @a[tag=murderer] if score $murder_random murder_random matches 1 run tellraw @a [{"text": "死亡 ➷ ","color": "gray"},{"selector":"@s"},{"text":" 被烟花轰炸炸死了","color": "white"}]

execute unless entity @a[tag=murderer] if score $murder_random murder_random matches 2 run tellraw @a [{"text": "死亡 ➷ ","color": "gray"},{"selector":"@s"},{"text":" 在烟花轰炸中死了","color": "white"}]

execute unless entity @a[tag=murderer] if score $murder_random murder_random matches 3 run tellraw @a [{"text": "死亡 ➷ ","color": "gray"},{"selector":"@s"},{"text":" 在烟花轰炸里成为了粉末","color": "white"}]