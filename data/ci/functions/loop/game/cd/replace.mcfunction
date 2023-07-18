#玻璃板替换
execute as @a[tag=1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:red_stained_glass_pane", Count: 1b}]}] run clear @s minecraft:red_stained_glass_pane 1
execute as @a[tag=1_skill_cding] run item replace entity @s hotbar.0 with minecraft:red_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}, AttributeModifiers: [{Operation: 0, Amount: -1, UUID: [I; 586650833, 1718784998, -408523868, 922542992], Slot: mainhand, AttributeName: "generic.attack_damage", Name: "generic.attackDamage"}], HideFlags: 63} 1

execute as @a[tag=2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:yellow_stained_glass_pane", Count: 1b}]}] run clear @s minecraft:yellow_stained_glass_pane 1
execute as @a[tag=2_skill_cding] run item replace entity @s hotbar.1 with minecraft:yellow_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}, AttributeModifiers: [{Operation: 0, Amount: -1, UUID: [I; 586650833, 1718784998, -408523868, 922542992], Slot: mainhand, AttributeName: "generic.attack_damage", Name: "generic.attackDamage"}], HideFlags: 63} 1

execute as @a[tag=3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:green_stained_glass_pane", Count: 1b}]}] run clear @s minecraft:green_stained_glass_pane 1
execute as @a[tag=3_skill_cding] run item replace entity @s hotbar.2 with minecraft:green_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}, AttributeModifiers: [{Operation: 0, Amount: -1, UUID: [I; 586650833, 1718784998, -408523868, 922542992], Slot: mainhand, AttributeName: "generic.attack_damage", Name: "generic.attackDamage"}], HideFlags: 63} 1

execute as @a[tag=10_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 9b, id: "minecraft:blue_stained_glass_pane", Count: 1b}]}] run clear @s minecraft:blue_stained_glass_pane 1
execute as @a[tag=10_skill_cding] run item replace entity @s inventory.0 with minecraft:blue_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}, AttributeModifiers: [{Operation: 0, Amount: -1, UUID: [I; 586650833, 1718784998, -408523868, 922542992], Slot: mainhand, AttributeName: "generic.attack_damage", Name: "generic.attackDamage"}], HideFlags: 63} 1

execute as @a[tag=11_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 10b, id: "minecraft:purple_stained_glass_pane", Count: 1b}]}] run clear @s minecraft:purple_stained_glass_pane 1
execute as @a[tag=11_skill_cding] run item replace entity @s inventory.1 with minecraft:purple_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}, AttributeModifiers: [{Operation: 0, Amount: -1, UUID: [I; 586650833, 1718784998, -408523868, 922542992], Slot: mainhand, AttributeName: "generic.attack_damage", Name: "generic.attackDamage"}], HideFlags: 63} 1

execute as @a[tag=12_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 11b, id: "minecraft:pink_stained_glass_pane", Count: 1b}]}] run clear @s minecraft:pink_stained_glass_pane 1
execute as @a[tag=12_skill_cding] run item replace entity @s inventory.2 with minecraft:pink_stained_glass_pane{display: {Name: '[{"text":"技能冷却中","color":"gray","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'}, AttributeModifiers: [{Operation: 0, Amount: -1, UUID: [I; 586650833, 1718784998, -408523868, 922542992], Slot: mainhand, AttributeName: "generic.attack_damage", Name: "generic.attackDamage"}], HideFlags: 63} 1

#循环
schedule function ci:loop/game/cd/replace 2t append
