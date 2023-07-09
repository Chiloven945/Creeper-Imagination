#头盔位置锁定
execute as @a[scores={job=4}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",Count:1b}]}] run clear @s minecraft:golden_helmet
    execute as @a[scores={job=4}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",Count:1b}]}] run item replace entity @s armor.head from block -4961 71 -5074 container.23

#胸甲位置锁定
execute as @a[scores={job=4}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate",Count:1b}]}] run clear @s minecraft:chainmail_chestplate
    execute as @a[scores={job=4}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:chainmail_chestplate",Count:1b}]}] run item replace entity @s armor.chest from block -4961 71 -5074 container.24

#循环
schedule function ci:loop/game/job/4_emt/ivtr 1t append
