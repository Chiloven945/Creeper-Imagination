#clear @s stone_button{display:{Name:'{"text": "冷却中","color": "white","italic": false}',Lore:['{"text": "9-技能","color":"gray","italic":false}']}}

clear @s stone_button[item_name='{"text": "冷却中","color": "white","italic": false}',lore=['{"text": "9-技能","color": "gray","italic": false}']]

#$item replace entity @s hotbar.8 with stone_button{display:{Name:"{\"text\": \"冷却中\",\"color\": \"white\",\"italic\": false}",Lore:["{\"text\": \"9-技能\",\"color\":\"gray\",\"italic\":false}"]}} $(cd_9)

$item replace entity @s hotbar.8 with stone_button[item_name='{"text": "冷却中","color": "white","italic": false}',lore=['{"text": "9-技能","color": "gray","italic": false}']] $(cd_9)