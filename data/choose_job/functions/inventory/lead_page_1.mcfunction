#检测背包对应格子是否正确




execute as @s[scores={choose_job_page=1},nbt=!{Inventory:[{count: 1, Slot: 1b, components: {"minecraft:item_name": '{"color":"white","italic":false,"text":"爆破者-苦力怕"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 高额爆炸伤害与AOE同存"}', '{"color":"gray","italic":false,"text":"✎ 警告：瞄准好再发射！"}', '{"color":"gray","extra":[{"color":"white","italic":false,"text":"右键"},{"color":"gray","italic":false,"text":"选择此职业"}],"italic":false,"text":"❃ "}']}, id: "minecraft:creeper_spawn_egg"}]}] unless score @s job_choose matches 1 run function choose_job:inventory/1a

execute as @s[scores={choose_job_page=1,job_choose=1},nbt=!{Inventory:[{count: 1, Slot: 1b, components: {"minecraft:item_name": '{"color":"aqua","extra":[{"color":"aqua","italic":false,"text":" [选择中]"}],"italic":false,"text":"爆破者-苦力怕"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 高额爆炸伤害与AOE同存"}', '{"color":"gray","italic":false,"text":"✎ 警告：瞄准好再发射！"}', '{"color":"gray","italic":false,"text":"已选择此职业"}'], "minecraft:enchantments": {show_in_tooltip: 0b, levels: {"minecraft:unbreaking": 1}}}, id: "minecraft:creeper_spawn_egg"}]}] run function choose_job:inventory/1b



execute as @s[scores={choose_job_page=1},nbt=!{Inventory:[{count: 1, Slot: 2b, components: {"minecraft:item_name": '{"color":"white","italic":false,"text":"莫桑"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 使用机关发射箭矢"}', '{"color":"gray","italic":false,"text":"✎ 利用地形优势创造距离"}', '{"color":"gray","extra":[{"color":"white","italic":false,"text":"右键"},{"color":"gray","italic":false,"text":"选择此职业"}],"italic":false,"text":"❃ "}']}, id: "minecraft:dispenser"}]}] unless score @s job_choose matches 2 run function choose_job:inventory/2a

execute as @s[scores={choose_job_page=1,job_choose=2},nbt=!{Inventory:[{count: 1, Slot: 2b, components: {"minecraft:item_name": '{"color":"aqua","extra":[{"color":"aqua","italic":false,"text":" [选择中]"}],"italic":false,"text":"莫桑"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 使用机关发射箭矢"}', '{"color":"gray","italic":false,"text":"✎ 利用地形优势创造距离"}', '{"color":"gray","italic":false,"text":"已选择此职业"}'], "minecraft:enchantments": {show_in_tooltip: 0b, levels: {"minecraft:unbreaking": 1}}}, id: "minecraft:dispenser"}]}] run function choose_job:inventory/2b



execute as @s[scores={choose_job_page=1},nbt=!{Inventory:[{count: 1, Slot: 3b, components: {"minecraft:item_name": '{"color":"white","italic":false,"text":"复仇者"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 控制血量获得高伤害"}', '{"color":"gray","italic":false,"text":"✎ ⚔豆！爽！"}', '{"color":"gray","extra":[{"color":"white","italic":false,"text":"右键"},{"color":"gray","italic":false,"text":"选择此职业"}],"italic":false,"text":"❃ "}']}, id: "minecraft:nether_wart"}]}] unless score @s job_choose matches 3 run function choose_job:inventory/3a

execute as @s[scores={choose_job_page=1,job_choose=3},nbt=!{Inventory:[{count: 1, Slot: 3b, components: {"minecraft:item_name": '{"color":"aqua","extra":[{"color":"aqua","italic":false,"text":" [选择中]"}],"italic":false,"text":"莫桑"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 控制血量获得高伤害"}', '{"color":"gray","italic":false,"text":"✎ ⚔豆！爽！"}', '{"color":"gray","italic":false,"text":"已选择此职业"}'], "minecraft:enchantments": {show_in_tooltip: 0b, levels: {"minecraft:unbreaking": 1}}}, id: "minecraft:nether_wart"}]}] run function choose_job:inventory/3b



execute as @s[scores={choose_job_page=1},nbt=!{Inventory:[{count: 1, Slot: 4b, components: {"minecraft:item_name": '{"color":"white","italic":false,"text":"血嗣"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 吸血转化为临时血量"}', '{"color":"gray","italic":false,"text":"✎ 高攻速与移速"}', '{"color":"gray","extra":[{"color":"white","italic":false,"text":"右键"},{"color":"gray","italic":false,"text":"选择此职业"}],"italic":false,"text":"❃ "}']}, id: "minecraft:magma_cream"}]}] unless score @s job_choose matches 4 run function choose_job:inventory/4a

execute as @s[scores={choose_job_page=1,job_choose=4},nbt=!{Inventory:[{count: 1, Slot: 4b, components: {"minecraft:item_name": '{"color":"aqua","extra":[{"color":"aqua","italic":false,"text":" [选择中]"}],"italic":false,"text":"血嗣"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 吸血转化为临时血量"}', '{"color":"gray","italic":false,"text":"✎ 高攻速与移速"}', '{"color":"gray","italic":false,"text":"已选择此职业"}'], "minecraft:enchantments": {show_in_tooltip: 0b, levels: {"minecraft:unbreaking": 1}}}, id: "minecraft:magma_cream"}]}] run function choose_job:inventory/4b



execute as @s[scores={choose_job_page=1},nbt=!{Inventory:[{count: 1, Slot: 5b, components: {"minecraft:item_name": '{"color":"white","italic":false,"text":"戈仑石人"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 高伤害低攻速，有一定抗击打能力"}', '{"color":"gray","italic":false,"text":"✎ 嘶————不痛"}', '{"color":"gray","extra":[{"color":"white","italic":false,"text":"右键"},{"color":"gray","italic":false,"text":"选择此职业"}],"italic":false,"text":"❃ "}']}, id: "minecraft:obsidian"}]}] unless score @s job_choose matches 5 run function choose_job:inventory/5a

execute as @s[scores={choose_job_page=1,job_choose=5},nbt=!{Inventory:[{count: 1, Slot: 5b, components: {"minecraft:item_name": '{"color":"aqua","extra":[{"color":"aqua","italic":false,"text":" [选择中]"}],"italic":false,"text":"戈仑石人"}', "minecraft:lore": ['{"color":"gray","italic":false,"text":"✎ 高伤害低攻速，有一定抗击打能力"}', '{"color":"gray","italic":false,"text":"✎ 嘶————不痛"}', '{"color":"gray","italic":false,"text":"已选择此职业"}'], "minecraft:enchantments": {show_in_tooltip: 0b, levels: {"minecraft:unbreaking": 1}}}, id: "minecraft:obsidian"}]}] run function choose_job:inventory/5b