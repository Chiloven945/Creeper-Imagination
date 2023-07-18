#头盔位置锁定
execute as @a[scores={job=3}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:lead",Count:1b}]}] run clear @s minecraft:lead
    execute as @a[scores={job=3}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:lead",Count:1b}]}] run item replace entity @s armor.head from block -4981 83 -4965 container.23

#胸甲位置锁定
execute as @a[scores={job=3}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run clear @s minecraft:leather_chestplate
    execute as @a[scores={job=3}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run item replace entity @s armor.chest from block -4981 83 -4965 container.24

#非cd锁定
execute as @a[scores={job=3,3_skill_1_change_true=6},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:golden_shovel", Count: 1b}]}] run clear @s minecraft:golden_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=6},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4981 83 -4965 container.17

execute as @a[scores={job=3,3_skill_1_change_true=5},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:netherite_shovel", Count: 1b}]}] run clear @s minecraft:netherite_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=5},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:netherite_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4981 83 -4965 container.16

execute as @a[scores={job=3,3_skill_1_change_true=4},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:diamond_shovel", Count: 1b}]}] run clear @s minecraft:diamond_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=4},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:diamond_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4981 83 -4965 container.15

execute as @a[scores={job=3,3_skill_1_change_true=3},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:iron_shovel", Count: 1b}]}] run clear @s minecraft:iron_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=3},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:iron_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4981 83 -4965 container.14

execute as @a[scores={job=3,3_skill_1_change_true=2},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_shovel", Count: 1b}]}] run clear @s minecraft:stone_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=2},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4981 83 -4965 container.13

execute as @a[scores={job=3,3_skill_1_change_true=1},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:wooden_shovel", Count: 1b}]}] run clear @s minecraft:wooden_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=1},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:wooden_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from block -4981 83 -4965 container.12

#非cd锁定
execute as @a[scores={job=3},tag=!2_skill_cding] unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:end_crystal",Count:1b}]}] run clear @s minecraft:end_crystal
    execute as @a[scores={job=3},tag=!2_skill_cding] unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:end_crystal",Count:1b}]}] run item replace entity @s hotbar.1 from block -4981 83 -4965 container.1

#非cd锁定
execute as @a[scores={job=3},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:chest", Count: 1b}]}] run clear @s minecraft:chest
    execute as @a[scores={job=3},tag=!3_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 2b, id: "minecraft:chest", Count: 1b}]}] run item replace entity @s hotbar.2 from block -4981 83 -4965 container.2

#非cd锁定
execute as @a[scores={job=3},tag=!10_skill_cding] unless entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:glow_ink_sac",Count:1b}]}] run clear @s minecraft:glow_ink_sac
    execute as @a[scores={job=3},tag=!10_skill_cding] unless entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:glow_ink_sac",Count:1b}]}] run item replace entity @s inventory.0 from block -4981 83 -4965 inventory.0

#循环
schedule function ci:loop/game/job/3/lock 1t append
