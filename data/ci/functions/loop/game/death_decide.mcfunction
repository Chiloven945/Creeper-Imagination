###击杀判定###

#苦力怕击杀
execute as @e[type=creeper,tag=1_skill_1_spawn] run scoreboard players add @s 1_skill_1_time 1
    execute as @e[tag=1_skill_1_spawn,scores={1_skill_1_time=19..}] at @s run scoreboard players operation @a[distance=..8] killed_by_creeper_id = @s id
    execute as @a[scores={killed_by_creeper=1..}] at @r[scores={killed_by_creeper=0}] if score @p id = @s killed_by_creeper_id run tag @p add trigger_kill
    execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..}] run tellraw @a [{"text":"击杀","color":"aqua"},{"text":" >>> ","color":"white","bold":true},{"selector":"@s","color":"red"},{"text":"被","color":"white"},{"selector":"@a[tag=trigger_kill]","color":"red"},{"text":"炸得大败而归！","color":"white"}]
    execute as @a[tag=trigger_kill] run function ci:loop/essential/death/show/kill
    execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..}] run scoreboard players set @s killed_by_creeper 0
    execute as @a[tag=trigger_kill] run tag @a remove trigger_kill
    execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..}] at @s if score @s id = @s killed_by_creeper_id run tag @p add trigger_suicide
    execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..},tag=trigger_suicide] run tellraw @a [{"text":"击杀","color":"aqua"},{"text":" >>> ","color":"white","bold":true},{"selector":"@s","color":"red"},{"text":"把自己炸得满面尘灰！","color":"white"}]
    execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..},tag=trigger_suicide] run function ci:loop/essential/death/show/suicide
    execute as @a[scores={killed_by_creeper_id=1..,killed_by_creeper=1..},tag=trigger_suicide] run scoreboard players set @s killed_by_creeper 0
    execute as @a[tag=trigger_suicide] run tag @a remove trigger_suicide

#亡语击杀（引导向苦力怕击杀）
execute as @e[type=creeper,tag=1_skill_10_spawn] run scoreboard players add @s 1_skill_10_time 1
    execute as @e[tag=1_skill_10_spawn,scores={1_skill_10_time=19..}] at @s run scoreboard players operation @a[distance=..8] killed_by_creeper_id = @s id

#空手撸人击杀
execute as @a[scores={job=1,damage=1..,direct_kill=1..}] run tellraw @a [{"text":"击杀 ","color":"aqua"},{"text":">>> ","color":"white","bold":true},{"selector":"@a[scores={direct_killed_by_player=1..}]","color":"red"},{"text":"被","color":"white"},{"selector":"@a[scores={direct_kill=1..,job=1}]","color":"red"},{"text":"一巴掌呼的找不着北","color":"white"}]
    execute as @a[scores={job=1,damage=1..,direct_kill=1..}] run function ci:loop/essential/death/show/kill
    execute if entity @a[scores={job=1,damage=1..,direct_kill=1..}] run scoreboard players reset @a direct_killed_by_player
    execute as @a[scores={job=1,damage=1..,direct_kill=1..}] run scoreboard players reset @s direct_kill
    execute as @a[scores={job=1}] run scoreboard players reset @s damage

#烟花击杀
execute as @a[scores={job=1,direct_kill=1..}] unless entity @s[scores={damage=1..}] run tellraw @a [{"text":"击杀 ","color":"aqua"},{"text":">>> ","color":"white","bold":true},{"selector":"@a[scores={direct_killed_by_player=1..}]","color":"red"},{"text":"被","color":"white"},{"selector":"@a[scores={direct_kill=1..,job=1}]","color":"red"},{"text":"用远程爆破肢解了","color":"white"}]
    execute as @a[scores={job=1,direct_kill=1..}] unless entity @s[scores={damage=1..}] run function ci:loop/essential/death/show/kill
    execute as @a[scores={job=1,direct_kill=1..}] unless entity @s[scores={damage=1..}] run scoreboard players reset @a direct_killed_by_player
    execute as @a[scores={job=1,direct_kill=1..}] unless entity @s[scores={damage=1..}] run scoreboard players reset @s direct_kill
