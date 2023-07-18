#头盔位置锁定
execute as @a[scores={job=2}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:bedrock",Count:1b}]}] run clear @s minecraft:bedrock
    execute as @a[scores={job=2}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:bedrock",Count:1b}]}] run item replace entity @s armor.head from block -4979 83 -4965 container.23

#胸甲位置锁定
execute as @a[scores={job=2}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run clear @s minecraft:leather_chestplate
    execute as @a[scores={job=2}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run item replace entity @s armor.chest from block -4979 83 -4965 container.24

#非cd锁定
execute as @a[scores={job=2},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:allium", Count: 1b}]}] run clear @s minecraft:allium
    execute as @a[scores={job=2},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:allium", Count: 1b}]}] run item replace entity @s hotbar.2 from block -4979 83 -4965 container.2

#非cd锁定
execute as @a[scores={job=2},tag=!2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:ender_pearl", Count: 1b}]}] run clear @s minecraft:ender_pearl
    execute as @a[scores={job=2},tag=!2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:ender_pearl", Count: 1b}]}] run item replace entity @s hotbar.1 from block -4979 83 -4965 container.1

#非cd锁定
execute as @a[scores={job=2},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_sword", Count: 1b}]}] run clear @s minecraft:stone_sword
    execute as @a[scores={job=2},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_sword", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4979 83 -4965 container.0

#非cd锁定
execute as @a[scores={job=2},tag=!10_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 8b, id: "minecraft:melon_seeds", Count: 1b}]}] run clear @s minecraft:melon_seeds
    execute as @a[scores={job=2},tag=!10_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 8b, id: "minecraft:melon_seeds", Count: 1b}]}] run item replace entity @s hotbar.8 from block -4979 83 -4965 container.9

#循环
schedule function ci:loop/game/job/2/lock 1t append
