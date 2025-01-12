#clear @s stone_button{display:{Name:'{"text": "冷却中","color": "white","italic": false}',Lore:['{"text": "4-技能","color":"gray","italic":false}']}}

clear @s stone_button[item_name='{"text": "冷却中","color": "white","italic": false}',lore=['{"text": "4-技能","color": "gray","italic": false}']]

#$item replace entity @s hotbar.3 with stone_button{display:{Name:"{\"text\": \"冷却中\",\"color\": \"white\",\"italic\": false}",Lore:["{\"text\": \"4-技能\",\"color\":\"gray\",\"italic\":false}"]}} $(cd_4)

$item replace entity @s hotbar.3 with stone_button[item_name='{"text": "冷却中","color": "white","italic": false}',lore=['{"text": "4-技能","color": "gray","italic": false}']] $(cd_4)