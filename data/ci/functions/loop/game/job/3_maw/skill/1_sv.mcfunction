###魔艺技能1###

#技能内容
execute as @a[scores={job=3},tag=3_skill_1_start] at @s run particle minecraft:ambient_entity_effect ~ ~ ~ 0.5 0.1 0.5 0.1 30 force @a[distance=..15,tag=!no_particle]
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run playsound minecraft:entity.evoker.cast_spell player @a[distance=..15] ~ ~ ~ 100 0.1 0.15
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run scoreboard players set @s cd_1 4
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run scoreboard players operation @s 3_skill_1_change_true = @s 3_skill_1_change
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run scoreboard players reset @s wooden_shovel
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run scoreboard players reset @s stone_shovel
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run scoreboard players reset @s iron_shovel
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run scoreboard players reset @s diamond_shovel
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run scoreboard players reset @s netherite_shovel
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run scoreboard players reset @s golden_shovel
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run tag @s add 1_skill_cding
    execute as @a[scores={job=3},tag=3_skill_1_start,tag=3_skill_3_mark] at @s run scoreboard players set @s 3_skill_1_change_true 6
    execute as @a[scores={job=3},tag=3_skill_1_start,tag=3_skill_3_mark] at @s run tag @s remove 3_skill_3_mark
    execute as @a[scores={job=3},tag=3_skill_1_start] at @s run tag @s remove 3_skill_1_start

#技能触发
execute as @a[scores={3_skill_1_test_1=1..}] at @s run tag @s add 3_skill_1_start
    execute as @a[scores={3_skill_1_test_2=1..}] at @s run tag @s add 3_skill_1_start
    execute as @a[scores={3_skill_1_test_3=1..}] at @s run tag @s add 3_skill_1_start
    execute as @a[scores={3_skill_1_test_4=1..}] at @s run tag @s add 3_skill_1_start
    execute as @a[scores={3_skill_1_test_5=1..}] at @s run tag @s add 3_skill_1_start
    execute as @a[scores={3_skill_1_test_6=1..}] at @s run tag @s add 3_skill_1_start
    execute as @a[scores={3_skill_1_test_1=1..}] at @s run scoreboard players reset @s 3_skill_1_test_1
    execute as @a[scores={3_skill_1_test_2=1..}] at @s run scoreboard players reset @s 3_skill_1_test_2
    execute as @a[scores={3_skill_1_test_3=1..}] at @s run scoreboard players reset @s 3_skill_1_test_3
    execute as @a[scores={3_skill_1_test_4=1..}] at @s run scoreboard players reset @s 3_skill_1_test_4
    execute as @a[scores={3_skill_1_test_5=1..}] at @s run scoreboard players reset @s 3_skill_1_test_5
    execute as @a[scores={3_skill_1_test_6=1..}] at @s run scoreboard players reset @s 3_skill_1_test_6

#降级
scoreboard players add @a[scores={job=3,3_skill_1_change_true=2..},tag=!1_skill_cding] 3_skill_1_reduce_level_time 1
    scoreboard players remove @a[scores={3_skill_1_reduce_level_time=200..}] 3_skill_1_change_true 1
    execute as @a[scores={3_skill_1_reduce_level_time=200..}] at @s run playsound minecraft:item.axe.scrape player @a[distance=..15] ~ ~ ~ 100 0.2
    scoreboard players reset @a[scores={3_skill_1_reduce_level_time=200..}] 3_skill_1_reduce_level_time

#随机数字,3_skill_1_change
scoreboard players add @a[scores={job=3},tag=!1_skill_cding] 3_skill_1_change 1
    scoreboard players set @a[scores={job=3,3_skill_1_change=7}] 3_skill_1_change 1

#非cd锁定
execute as @a[scores={job=3,3_skill_1_change_true=6},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:golden_shovel", Count: 1b}]}] run clear @s minecraft:golden_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=6},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from entity @e[tag=3_skill_1_store_6,limit=1] weapon.mainhand

execute as @a[scores={job=3,3_skill_1_change_true=5},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:netherite_shovel", Count: 1b}]}] run clear @s minecraft:netherite_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=5},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:netherite_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from entity @e[tag=3_skill_1_store_5,limit=1] weapon.mainhand

execute as @a[scores={job=3,3_skill_1_change_true=4},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:diamond_shovel", Count: 1b}]}] run clear @s minecraft:diamond_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=4},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:diamond_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from entity @e[tag=3_skill_1_store_4,limit=1] weapon.mainhand

execute as @a[scores={job=3,3_skill_1_change_true=3},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:iron_shovel", Count: 1b}]}] run clear @s minecraft:iron_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=3},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:iron_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from entity @e[tag=3_skill_1_store_3,limit=1] weapon.mainhand

execute as @a[scores={job=3,3_skill_1_change_true=2},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_shovel", Count: 1b}]}] run clear @s minecraft:stone_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=2},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:stone_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from entity @e[tag=3_skill_1_store_2,limit=1] weapon.mainhand

execute as @a[scores={job=3,3_skill_1_change_true=1},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:wooden_shovel", Count: 1b}]}] run clear @s minecraft:wooden_shovel
    execute as @a[scores={job=3,3_skill_1_change_true=1},tag=!1_skill_cding] unless entity @s[nbt={Inventory: [{Slot: 0b, id: "minecraft:wooden_shovel", Count: 1b}]}] run item replace entity @s hotbar.0 from entity @e[tag=3_skill_1_store_1,limit=1] weapon.mainhand

#循环
schedule function ci:loop/game/job/3_maw/skill/1_sv 1t append
