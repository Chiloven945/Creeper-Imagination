#头盔位置锁定
execute as @a[scores={job=1}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head",Count:1b}]}] run clear @s minecraft:creeper_head
    execute as @a[scores={job=1}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head",Count:1b}]}] run item replace entity @s armor.head from block -4977 83 -4965 container.23

#胸甲位置锁定
execute as @a[scores={job=1}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run clear @s minecraft:leather_chestplate
    execute as @a[scores={job=1}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run item replace entity @s armor.chest from block -4977 83 -4965 container.24

#非cd锁定
execute as @a[scores={job=1},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:creeper_spawn_egg", Count: 1b}]}] run clear @s minecraft:creeper_spawn_egg
    
execute as @a[scores={job=1},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:creeper_spawn_egg", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4977 83 -4965 container.0

#非cd锁定
execute as @a[scores={job=1},tag=!2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:crossbow", Count: 1b}]}] run clear @s minecraft:crossbow
    execute as @a[scores={job=1},tag=!2_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 1b, id: "minecraft:crossbow", Count: 1b}]}] run item replace entity @s hotbar.1 from block -4977 83 -4965 container.1

#非cd锁定
execute as @a[scores={job=1},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:firework_rocket", Count: 1b}]}] run clear @s minecraft:firework_rocket 1
    execute as @a[scores={job=1},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:firework_rocket", Count: 1b}]}] run item replace entity @s hotbar.2 from block -4977 83 -4965 container.2

#非cd锁定
execute as @a[scores={job=1}] unless entity @s[nbt={Inventory: [{Slot: 8b, id: "minecraft:tnt", Count: 1b}]}] run clear @s minecraft:tnt 1
execute as @a[scores={job=1}] unless entity @s[nbt={Inventory: [{Slot: 8b, id: "minecraft:tnt", Count: 1b}]}] run item replace entity @s hotbar.8 from block -4977 83 -4965 container.9

#循环
schedule function ci:loop/game/job/1/lock 1t append
