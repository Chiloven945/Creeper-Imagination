#头盔位置锁定
execute as @a[team=peace] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:anvil",Count:1b}]}] run clear @s minecraft:anvil
execute as @a[team=peace] unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:anvil",Count:1b}]}] run item replace entity @s hotbar.0 from block -4980 83 -4961 container.0

#胸甲位置锁定
execute as @a[team=peace] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:campfire",Count:1b}]}] run clear @s minecraft:campfire
execute as @a[team=peace] unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:campfire",Count:1b}]}] run item replace entity @s hotbar.8 from block -4980 83 -4961 container.8

execute as @a[team=war] run clear @s anvil
execute as @a[team=war] run clear @s campfire
#循环
schedule function ci:loop/game/job/0/lock 1t append
