#头盔位置锁定
execute as @a[scores={job=2}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:bedrock",Count:1b}]}] run clear @s minecraft:bedrock
    execute as @a[scores={job=2}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:bedrock",Count:1b}]}] run item replace entity @s armor.head from block -4961 71 -5042 container.23

#胸甲位置锁定
execute as @a[scores={job=2}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run clear @s minecraft:leather_chestplate
    execute as @a[scores={job=2}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",Count:1b}]}] run item replace entity @s armor.chest from block -4961 71 -5042 container.24

#循环
schedule function ci:loop/game/job/2_edm/ivtr 1t append
