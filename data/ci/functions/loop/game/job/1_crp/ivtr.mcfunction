#头盔位置锁定
execute as @a[scores={job=1}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head",Count:1b}]}] run clear @s minecraft:creeper_head
    execute as @a[scores={job=1}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:creeper_head",Count:1b}]}] run item replace entity @s armor.head from block -4961 71 -5025 container.23

#胸甲位置锁定
execute as @a[scores={job=1}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run clear @s minecraft:leather_chestplate
    execute as @a[scores={job=1}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run item replace entity @s armor.chest from block -4961 71 -5025 container.24

#循环
schedule function ci:loop/game/job/1_crp/ivtr 1t append
