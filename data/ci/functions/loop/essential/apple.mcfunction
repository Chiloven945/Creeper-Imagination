#苹果锁定位置
execute as @a[scores={job=1..}] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:apple",Count:1b}]}] run clear @s minecraft:apple
execute as @a[scores={job=1..}] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:apple"}]}] run item replace entity @s hotbar.8 with minecraft:apple{AttributeModifiers:[{Operation: 0, Amount: -1, UUID: [I; 595704594, 1920491971, -404856978, 1805270305], Slot: mainhand, AttributeName: "generic.attack_damage", Name: "generic.attackDamage"}],HideFlags:63,display:{Name:'[{"text":"回血苹果","color":"red","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]',Lore:['{"text":"手持回血，期间移动取消回血","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}']},HideFlags:63} 1

#循环
schedule function ci:loop/essential/apple 1t append
