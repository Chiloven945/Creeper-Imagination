clear @s #wool
#item replace entity @s[scores={death_spawn_time=1..}] hotbar.8 with campfire{display:{Name:'[{"text": "返回","color": "white","italic": false}]',Lore:['[{"text": "✎ 退出战场回到大厅","color": "gray","italic": false}]','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "使用","color": "gray","italic": false}]']}}
#回家
item replace entity @s[scores={death_spawn_time=1..}] hotbar.8 with campfire[item_name='{"text": "返回","color": "white","italic": false}',lore=['{"text": "✎ 退出战场回到大厅","color": "gray","italic": false}','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "使用","color": "gray","italic": false}]']] 1


#execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=2}] hotbar.8 with light_blue_wool{display:{Name:'[{"text": "蓝队","color": "white","italic": false}]',Lore:['[{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}]','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']}}
#蓝队
execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=2}] hotbar.8 with light_blue_wool[item_name='{"text": "蓝队","color": "white","italic": false}',lore=['{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']] 1

#execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=1}] hotbar.8 with red_wool{display:{Name:'[{"text": "红队","color": "white","italic": false}]',Lore:['[{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}]','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']}}
#红队
execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=1}] hotbar.8 with red_wool[item_name='{"text": "红队","color": "white","italic": false}',lore=['{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']] 1

#execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=4}] hotbar.8 with lime_wool{display:{Name:'[{"text": "绿队","color": "white","italic": false}]',Lore:['[{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}]','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']}}
#绿队
execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=4}] hotbar.8 with lime_wool[item_name='{"text": "绿队","color": "white","italic": false}',lore=['{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']] 1

#execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=3}] hotbar.8 with yellow_wool{display:{Name:'[{"text": "黄队","color": "white","italic": false}]',Lore:['[{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}]','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']}}
#黄队
execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=3}] hotbar.8 with yellow_wool[item_name='{"text": "黄队","color": "white","italic": false}',lore=['{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']] 1

#execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=0}] hotbar.8 with white_wool{display:{Name:'[{"text": "随机队伍","color": "white","italic": false}]',Lore:['[{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}]','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']}}
#随即队伍
execute unless score @s death_spawn_time matches 1.. run item replace entity @s[scores={team_choose=0}] hotbar.8 with white_wool[item_name='{"text": "随即队伍","color": "white","italic": false}',lore=['{"text": "✎ 如果队伍不平衡自动进入其他队伍","color": "gray","italic": false}','[{"text": "❃ ","color": "gray","italic": false},{"text": "右键","color": "white","italic": false},{"text": "切换队伍","color": "gray","italic": false}]']] 1
