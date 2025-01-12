clear @s chainmail_chestplate
clear @s iron_chestplate

#item replace entity @s[scores={team=1,job_3_2_time=1..}] armor.chest with iron_chestplate{HideFlags:255,display:{Name:'[{"text": "盔甲","color": "white","italic": false}]',Lore:['[{"text": "❈ 护甲 + 6","color": "gray","italic": false}]','[{"text": "✎ 怒气幻化的盔甲","color": "gray","italic": false}]']},AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:6d,Name:"1",Operation:0,Slot:"chest",UUID:[I;1000,1000,1000,1000]}],Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:rib"}} 1

item replace entity @s[scores={team=1,job_3_2_time=1..}] armor.chest with iron_chestplate[item_name='{"text": "不灭之甲","color": "white","italic": false}',lore=['{"text": "✎ 怒气...不灭...","color": "gray","italic": false}','[{"text": "❈ 护甲 + 6","color": "gray","italic": false}]'],hide_additional_tooltip={},unbreakable={show_in_tooltip:false},trim={material:redstone,pattern:"minecraft:rib",show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:6,name:"1",operation:"add_value",type:"minecraft:armor",uuid:[I;1123,123,123,123],slot:"any",id:"a:a"}]}] 1



#item replace entity @s[scores={team=2,job_3_2_time=1..}] armor.chest with iron_chestplate{HideFlags:255,display:{Name:'[{"text": "盔甲","color": "white","italic": false}]',Lore:['[{"text": "❈ 护甲 + 6","color": "gray","italic": false}]','[{"text": "✎ 怒气幻化的盔甲","color": "gray","italic": false}]']},AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:6d,Name:"1",Operation:0,Slot:"chest",UUID:[I;1000,1000,1000,1000]}],Unbreakable:1b,Trim:{material:"minecraft:lapis",pattern:"minecraft:rib"}} 1

item replace entity @s[scores={team=2,job_3_2_time=1..}] armor.chest with iron_chestplate[item_name='{"text": "不灭之甲","color": "white","italic": false}',lore=['{"text": "✎ 怒气...不灭...","color": "gray","italic": false}','[{"text": "❈ 护甲 + 6","color": "gray","italic": false}]'],hide_additional_tooltip={},unbreakable={show_in_tooltip:false},trim={material:lapis,pattern:"minecraft:rib",show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:6,name:"1",operation:"add_value",type:"minecraft:armor",uuid:[I;1123,123,123,123],slot:"any",id:"a:a"}]}] 1



#item replace entity @s[scores={team=3,job_3_2_time=1..}] armor.chest with iron_chestplate{HideFlags:255,display:{Name:'[{"text": "盔甲","color": "white","italic": false}]',Lore:['[{"text": "❈ 护甲 + 6","color": "gray","italic": false}]','[{"text": "✎ 怒气幻化的盔甲","color": "gray","italic": false}]']},AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:6d,Name:"1",Operation:0,Slot:"chest",UUID:[I;1000,1000,1000,1000]}],Unbreakable:1b,Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}} 1

item replace entity @s[scores={team=3,job_3_2_time=1..}] armor.chest with iron_chestplate[item_name='{"text": "不灭之甲","color": "white","italic": false}',lore=['{"text": "✎ 怒气...不灭...","color": "gray","italic": false}','[{"text": "❈ 护甲 + 6","color": "gray","italic": false}]'],hide_additional_tooltip={},unbreakable={show_in_tooltip:false},trim={material:gold,pattern:"minecraft:rib",show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:6,name:"1",operation:"add_value",type:"minecraft:armor",uuid:[I;1123,123,123,123],slot:"any",id:"a:a"}]}] 1



#item replace entity @s[scores={team=4,job_3_2_time=1..}] armor.chest with iron_chestplate{HideFlags:255,display:{Name:'[{"text": "盔甲","color": "white","italic": false}]',Lore:['[{"text": "❈ 护甲 + 6","color": "gray","italic": false}]','[{"text": "✎ 怒气幻化的盔甲","color": "gray","italic": false}]']},AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:6d,Name:"1",Operation:0,Slot:"chest",UUID:[I;1000,1000,1000,1000]}],Unbreakable:1b,Trim:{material:"minecraft:emerald",pattern:"minecraft:rib"}} 1

item replace entity @s[scores={team=4,job_3_2_time=1..}] armor.chest with iron_chestplate[item_name='{"text": "不灭之甲","color": "white","italic": false}',lore=['{"text": "✎ 怒气...不灭...","color": "gray","italic": false}','[{"text": "❈ 护甲 + 6","color": "gray","italic": false}]'],hide_additional_tooltip={},unbreakable={show_in_tooltip:false},trim={material:emerald,pattern:"minecraft:rib",show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:6,name:"1",operation:"add_value",type:"minecraft:armor",uuid:[I;1123,123,123,123],slot:"any",id:"a:a"}]}] 1





#execute unless entity @s[scores={job_3_2_time=1..}] run item replace entity @s[scores={team=1}] armor.chest with chainmail_chestplate{HideFlags:255,display:{Name:'[{"text": "盔甲","color": "white","italic": false}]',Lore:['[{"text": "✎ 暗含愤怒的力量","color": "gray","italic": false}]']},AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0d,Name:"1",Operation:0,Slot:"chest",UUID:[I;1000,1000,1000,1000]}],Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:rib"}} 1

execute unless entity @s[scores={job_3_2_time=1..}] run item replace entity @s[scores={team=1}] armor.chest with chainmail_chestplate[item_name='{"text": "锁链甲","color": "white","italic": false}',lore=['{"text": "✎ 它还没有注入力量","color": "gray","italic": false}'],hide_additional_tooltip={},unbreakable={show_in_tooltip:false},trim={material:redstone,pattern:"minecraft:rib",show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:0,name:"1",operation:"add_value",type:"minecraft:armor",uuid:[I;1123,123,123,123],slot:"any",id:"a:a"}]}] 1



#execute unless entity @s[scores={job_3_2_time=1..}] run item replace entity @s[scores={team=2}] armor.chest with chainmail_chestplate{HideFlags:255,display:{Name:'[{"text": "盔甲","color": "white","italic": false}]',Lore:['[{"text": "✎ 暗含愤怒的力量","color": "gray","italic": false}]']},AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0d,Name:"1",Operation:0,Slot:"chest",UUID:[I;1000,1000,1000,1000]}],Unbreakable:1b,Trim:{material:"minecraft:lapis",pattern:"minecraft:rib"}} 1

execute unless entity @s[scores={job_3_2_time=1..}] run item replace entity @s[scores={team=2}] armor.chest with chainmail_chestplate[item_name='{"text": "锁链甲","color": "white","italic": false}',lore=['{"text": "✎ 它还没有注入力量","color": "gray","italic": false}'],hide_additional_tooltip={},unbreakable={show_in_tooltip:false},trim={material:lapis,pattern:"minecraft:rib",show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:0,name:"1",operation:"add_value",type:"minecraft:armor",uuid:[I;1123,123,123,123],slot:"any",id:"a:a"}]}] 1



#execute unless entity @s[scores={job_3_2_time=1..}] run item replace entity @s[scores={team=3}] armor.chest with chainmail_chestplate{HideFlags:255,display:{Name:'[{"text": "盔甲","color": "white","italic": false}]',Lore:['[{"text": "✎ 暗含愤怒的力量","color": "gray","italic": false}]']},AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0d,Name:"1",Operation:0,Slot:"chest",UUID:[I;1000,1000,1000,1000]}],Unbreakable:1b,Trim:{material:"minecraft:gold",pattern:"minecraft:rib"}} 1

execute unless entity @s[scores={job_3_2_time=1..}] run item replace entity @s[scores={team=3}] armor.chest with chainmail_chestplate[item_name='{"text": "锁链甲","color": "white","italic": false}',lore=['{"text": "✎ 它还没有注入力量","color": "gray","italic": false}'],hide_additional_tooltip={},unbreakable={show_in_tooltip:false},trim={material:gold,pattern:"minecraft:rib",show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:0,name:"1",operation:"add_value",type:"minecraft:armor",uuid:[I;1123,123,123,123],slot:"any",id:"a:a"}]}] 1



#execute unless entity @s[scores={job_3_2_time=1..}] run item replace entity @s[scores={team=4}] armor.chest with chainmail_chestplate{HideFlags:255,display:{Name:'[{"text": "盔甲","color": "white","italic": false}]',Lore:['[{"text": "✎ 暗含愤怒的力量","color": "gray","italic": false}]']},AttributeModifiers:[{AttributeName:"minecraft:generic.armor",Amount:0d,Name:"1",Operation:0,Slot:"chest",UUID:[I;1000,1000,1000,1000]}],Unbreakable:1b,Trim:{material:"minecraft:emerald",pattern:"minecraft:rib"}} 1

execute unless entity @s[scores={job_3_2_time=1..}] run item replace entity @s[scores={team=4}] armor.chest with chainmail_chestplate[item_name='{"text": "锁链甲","color": "white","italic": false}',lore=['{"text": "✎ 它还没有注入力量","color": "gray","italic": false}'],hide_additional_tooltip={},unbreakable={show_in_tooltip:false},trim={material:emerald,pattern:"minecraft:rib",show_in_tooltip:false},attribute_modifiers={show_in_tooltip:false,modifiers:[{amount:0,name:"1",operation:"add_value",type:"minecraft:armor",uuid:[I;1123,123,123,123],slot:"any",id:"a:a"}]}] 1