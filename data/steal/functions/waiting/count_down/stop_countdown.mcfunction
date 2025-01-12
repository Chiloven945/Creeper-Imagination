scoreboard players reset $tool start_countdown
bossbar set ci:waiting color red
tellraw @a [{"text": "✪ ","color": "red"},{"text": "已准备人数不足","color": "red"}]
tellraw @a [{"text": "✪ ","color": "red"},{"text": "需要更多准备玩家","color": "red"}]
execute as @a at @a run playsound minecraft:block.note_block.didgeridoo player @s ~ ~ ~ 100 1
